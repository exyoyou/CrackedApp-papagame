.class Lorg/webrtc/haima/HmDCDevice$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmDCDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/webrtc/haima/HmDCDevice;


# direct methods
.method constructor <init>(Lorg/webrtc/haima/HmDCDevice;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :cond_0
    :goto_0
    :try_start_0
    iget-object v2, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 6
    .line 7
    iget-object v2, v2, Lorg/webrtc/haima/HmDCDevice;->mSendDataQ:Ljava/util/concurrent/BlockingDeque;

    .line 8
    .line 9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    .line 11
    const-wide/16 v4, 0x1

    .line 12
    .line 13
    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;

    .line 18
    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    iget-object v2, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 22
    .line 23
    invoke-static {v2}, Lorg/webrtc/haima/HmDCDevice;->access$000(Lorg/webrtc/haima/HmDCDevice;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_0

    .line 42
    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 49
    .line 50
    iget-object v1, v1, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, " is disposed, sender stop."

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :cond_2
    iget-boolean v3, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->isBinary:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    .line 64
    const-string v4, "|"

    .line 65
    .line 66
    const/4 v5, 0x1

    .line 67
    const/4 v6, 0x0

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    :try_start_1
    iget-boolean v3, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->addHeader:Z

    .line 71
    .line 72
    if-eqz v3, :cond_3

    .line 73
    .line 74
    iget v3, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 75
    .line 76
    invoke-static {v3}, Lorg/webrtc/haima/a;->c(I)[B

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iget v7, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 81
    .line 82
    const/4 v8, 0x4

    .line 83
    add-int/2addr v7, v8

    .line 84
    new-array v7, v7, [B

    .line 85
    .line 86
    invoke-static {v3, v6, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    .line 88
    .line 89
    iget-object v3, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 90
    .line 91
    iget v9, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 92
    .line 93
    invoke-static {v3, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 97
    .line 98
    iget-object v3, v3, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 99
    .line 100
    new-instance v6, Lorg/hmwebrtc/DataChannel$Buffer;

    .line 101
    .line 102
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-direct {v6, v7, v5}, Lorg/hmwebrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v6}, Lorg/hmwebrtc/DataChannel;->send(Lorg/hmwebrtc/DataChannel$Buffer;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget v3, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 114
    .line 115
    new-array v7, v3, [B

    .line 116
    .line 117
    iget-object v8, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 118
    .line 119
    invoke-static {v8, v6, v7, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 123
    .line 124
    iget-object v3, v3, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 125
    .line 126
    new-instance v6, Lorg/hmwebrtc/DataChannel$Buffer;

    .line 127
    .line 128
    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    .line 131
    move-result-object v7

    .line 132
    invoke-direct {v6, v7, v5}, Lorg/hmwebrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3, v6}, Lorg/hmwebrtc/DataChannel;->send(Lorg/hmwebrtc/DataChannel$Buffer;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 136
    .line 137
    .line 138
    :goto_1
    const-wide/16 v6, 0x4

    .line 139
    .line 140
    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 141
    .line 142
    .line 143
    :catch_0
    :try_start_3
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 144
    .line 145
    iget-boolean v6, v3, Lorg/webrtc/haima/HmDCDevice;->isSentFirstBinary:Z

    .line 146
    .line 147
    if-nez v6, :cond_6

    .line 148
    .line 149
    iput-boolean v5, v3, Lorg/webrtc/haima/HmDCDevice;->isSentFirstBinary:Z

    .line 150
    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    iget-object v5, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 157
    .line 158
    iget-object v5, v5, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    iget v4, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    const/16 v4, 0x3492

    .line 176
    .line 177
    invoke-static {v4, v3}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    goto/16 :goto_2

    .line 181
    .line 182
    :cond_4
    sget-boolean v3, Lorg/webrtc/haima/util/RtcConstants;->IS_DEBUG:Z

    .line 183
    .line 184
    if-eqz v3, :cond_5

    .line 185
    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v7, "Data2ROM: "

    .line 192
    .line 193
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    iget-boolean v7, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->isBinary:Z

    .line 197
    .line 198
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    const-string v7, ", length: "

    .line 202
    .line 203
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    iget v7, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 207
    .line 208
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    const-string v7, ", content: "

    .line 212
    .line 213
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    new-instance v7, Ljava/lang/String;

    .line 217
    .line 218
    iget-object v8, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 219
    .line 220
    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const-string v7, ", dc connect state: "

    .line 227
    .line 228
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    iget-object v7, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 232
    .line 233
    iget-object v7, v7, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 234
    .line 235
    invoke-virtual {v7}, Lorg/hmwebrtc/DataChannel;->state()Lorg/hmwebrtc/DataChannel$State;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    :cond_5
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 243
    .line 244
    iget-object v3, v3, Lorg/webrtc/haima/HmDCDevice;->mDataChannel:Lorg/hmwebrtc/DataChannel;

    .line 245
    .line 246
    new-instance v7, Lorg/hmwebrtc/DataChannel$Buffer;

    .line 247
    .line 248
    iget-object v8, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 249
    .line 250
    invoke-static {v8}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 251
    .line 252
    .line 253
    move-result-object v8

    .line 254
    invoke-direct {v7, v8, v6}, Lorg/hmwebrtc/DataChannel$Buffer;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v3, v7}, Lorg/hmwebrtc/DataChannel;->send(Lorg/hmwebrtc/DataChannel$Buffer;)Z

    .line 258
    .line 259
    .line 260
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 261
    .line 262
    iget-boolean v6, v3, Lorg/webrtc/haima/HmDCDevice;->isSentFirstText:Z

    .line 263
    .line 264
    if-nez v6, :cond_6

    .line 265
    .line 266
    iput-boolean v5, v3, Lorg/webrtc/haima/HmDCDevice;->isSentFirstText:Z

    .line 267
    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    .line 270
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    .line 272
    .line 273
    iget-object v5, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 274
    .line 275
    iget-object v5, v5, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    new-instance v4, Ljava/lang/String;

    .line 284
    .line 285
    iget-object v5, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 286
    .line 287
    const-string v6, "UTF-8"

    .line 288
    .line 289
    invoke-static {v6}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-direct {v4, v5, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    const/16 v4, 0x3493

    .line 304
    .line 305
    invoke-static {v4, v3}, Lorg/webrtc/haima/countly/RtcCountlyUtil;->recordEvent(ILjava/lang/String;)V

    .line 306
    .line 307
    .line 308
    :cond_6
    :goto_2
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 309
    .line 310
    iget-wide v4, v3, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesToRom:J

    .line 311
    .line 312
    iget v2, v2, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 313
    .line 314
    int-to-long v6, v2

    .line 315
    add-long/2addr v4, v6

    .line 316
    iput-wide v4, v3, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesToRom:J

    .line 317
    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 319
    .line 320
    .line 321
    move-result-wide v2

    .line 322
    sub-long/2addr v2, v0

    .line 323
    const-wide/16 v4, 0x1388

    .line 324
    .line 325
    cmp-long v6, v2, v4

    .line 326
    .line 327
    if-ltz v6, :cond_0

    .line 328
    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 330
    .line 331
    .line 332
    move-result-wide v0

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    const-string v3, "send data to rom, total: "

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    iget-object v3, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 344
    .line 345
    iget-wide v3, v3, Lorg/webrtc/haima/HmDCDevice;->mTotalBytesToRom:J

    .line 346
    .line 347
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 348
    .line 349
    .line 350
    goto/16 :goto_0

    .line 351
    .line 352
    :catch_1
    move-exception v0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v2, "poll data2Rom from queue error: "

    .line 359
    .line 360
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 364
    .line 365
    .line 366
    invoke-static {}, Lorg/webrtc/haima/HmDataChannelManager;->getInstance()Lorg/webrtc/haima/HmDataChannelManager;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    iget-object v1, p0, Lorg/webrtc/haima/HmDCDevice$1;->this$0:Lorg/webrtc/haima/HmDCDevice;

    .line 371
    .line 372
    iget-object v1, v1, Lorg/webrtc/haima/HmDCDevice;->mDeviceName:Ljava/lang/String;

    .line 373
    .line 374
    invoke-virtual {v0, v1}, Lorg/webrtc/haima/HmDataChannelManager;->destroyDCDevice(Ljava/lang/String;)Z

    .line 375
    .line 376
    .line 377
    :goto_3
    return-void
.end method
