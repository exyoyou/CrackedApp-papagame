.class Lcom/join/mgps/helper/WifiClientThread$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/helper/WifiClientThread$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/helper/WifiClientThread$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/WifiClientThread$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

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
    .locals 5

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_8

    .line 14
    .line 15
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Message;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    :goto_1
    if-nez v1, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-array v2, v1, [B

    .line 48
    .line 49
    iget-object v3, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 50
    .line 51
    iget-object v3, v3, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/join/mgps/helper/WifiClientThread;->access$000(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/DataInputStream;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "utf8"

    .line 63
    .line 64
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v2, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 68
    .line 69
    iget-object v2, v2, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 70
    .line 71
    invoke-static {v2}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "client Receiver:"

    .line 80
    .line 81
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    const-class v4, Lcom/join/mgps/aidl/FightProtocal;

    .line 92
    .line 93
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lcom/join/mgps/aidl/FightProtocal;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    .line 105
    if-ne v3, v4, :cond_5

    .line 106
    .line 107
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    sget-byte v3, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 112
    .line 113
    if-ne v1, v3, :cond_3

    .line 114
    .line 115
    const/16 v1, 0x2329

    .line 116
    .line 117
    iput v1, v0, Landroid/os/Message;->what:I

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v3, "-"

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    .line 149
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 150
    .line 151
    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 152
    .line 153
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    .line 159
    .line 160
    goto/16 :goto_0

    .line 161
    .line 162
    :cond_3
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getGameId()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget-object v3, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 167
    .line 168
    iget-object v3, v3, Lcom/join/mgps/helper/WifiClientThread$a;->c:Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v1

    .line 174
    if-eqz v1, :cond_4

    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 177
    .line 178
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->context:Landroid/content/Context;

    .line 181
    .line 182
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {v2, v0}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 198
    .line 199
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignalClient(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 217
    .line 218
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 219
    .line 220
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 225
    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_4
    const/16 v1, 0x2332

    .line 230
    .line 231
    iput v1, v0, Landroid/os/Message;->what:I

    .line 232
    .line 233
    new-instance v1, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getGameId()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v3, "_"

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getGameName()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v1

    .line 261
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 262
    .line 263
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 264
    .line 265
    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 266
    .line 267
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    .line 273
    .line 274
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 275
    .line 276
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 277
    .line 278
    invoke-virtual {v0}, Lcom/join/mgps/helper/WifiClientThread;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 279
    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :catch_0
    move-exception v0

    .line 284
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 285
    .line 286
    .line 287
    goto/16 :goto_0

    .line 288
    .line 289
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    sget-byte v3, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    .line 294
    .line 295
    if-ne v0, v3, :cond_6

    .line 296
    .line 297
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 314
    .line 315
    .line 316
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 317
    .line 318
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 319
    .line 320
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$100(Lcom/join/mgps/helper/WifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 328
    .line 329
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 330
    .line 331
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 334
    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 337
    .line 338
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 339
    .line 340
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const/16 v1, 0x232a

    .line 345
    .line 346
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 347
    .line 348
    .line 349
    goto/16 :goto_0

    .line 350
    .line 351
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    sget-byte v3, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    .line 356
    .line 357
    if-ne v0, v3, :cond_7

    .line 358
    .line 359
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 360
    .line 361
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 362
    .line 363
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 366
    .line 367
    .line 368
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 369
    .line 370
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 371
    .line 372
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    const/16 v1, 0x2331

    .line 377
    .line 378
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 379
    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_7
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_STARTGAME:B

    .line 388
    .line 389
    if-ne v0, v2, :cond_0

    .line 390
    .line 391
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 392
    .line 393
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 394
    .line 395
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v2, "start game:"

    .line 404
    .line 405
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 409
    .line 410
    .line 411
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 412
    .line 413
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 414
    .line 415
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 416
    .line 417
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 418
    .line 419
    .line 420
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 421
    .line 422
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 423
    .line 424
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    const/16 v1, 0x232d

    .line 429
    .line 430
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 431
    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :catch_1
    move-exception v0

    .line 436
    iget-object v1, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 437
    .line 438
    iget-object v1, v1, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 439
    .line 440
    invoke-static {v1}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 447
    .line 448
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 449
    .line 450
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$300(Lcom/join/mgps/helper/WifiClientThread;)Landroid/os/Handler;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    const/16 v1, 0x232b

    .line 455
    .line 456
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 457
    .line 458
    .line 459
    :try_start_3
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 460
    .line 461
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 462
    .line 463
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread;->socket:Ljava/net/Socket;

    .line 464
    .line 465
    if-eqz v0, :cond_8

    .line 466
    .line 467
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 468
    .line 469
    .line 470
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/helper/WifiClientThread$a$a;->b:Lcom/join/mgps/helper/WifiClientThread$a;

    .line 471
    .line 472
    iget-object v0, v0, Lcom/join/mgps/helper/WifiClientThread$a;->d:Lcom/join/mgps/helper/WifiClientThread;

    .line 473
    .line 474
    invoke-static {v0}, Lcom/join/mgps/helper/WifiClientThread;->access$200(Lcom/join/mgps/helper/WifiClientThread;)Ljava/lang/String;

    .line 475
    .line 476
    .line 477
    return-void

    .line 478
    :catch_2
    move-exception v0

    .line 479
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 480
    .line 481
    .line 482
    goto/16 :goto_0
.end method
