.class Lcom/join/mgps/aidl/MGWifiClientThread$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/aidl/MGWifiClientThread$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/aidl/MGWifiClientThread$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/aidl/MGWifiClientThread$a;)V
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
    iput-object p1, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

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
    .locals 6

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 6
    .line 7
    const-string v1, "-1"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_8

    .line 16
    .line 17
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 18
    .line 19
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :goto_1
    if-nez v0, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    new-array v2, v0, [B

    .line 45
    .line 46
    iget-object v3, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 47
    .line 48
    iget-object v3, v3, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 49
    .line 50
    invoke-static {v3}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$100(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/DataInputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 55
    .line 56
    .line 57
    new-instance v3, Ljava/lang/String;

    .line 58
    .line 59
    const-string v4, "gbk"

    .line 60
    .line 61
    invoke-direct {v3, v2, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 65
    .line 66
    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 67
    .line 68
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v4, "client Receiver:"

    .line 77
    .line 78
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 85
    .line 86
    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 87
    .line 88
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$400(Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/android/app/common/utils/JsonMapper;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const-class v4, Lcom/join/mgps/aidl/FightProtocal;

    .line 93
    .line 94
    invoke-virtual {v2, v3, v4}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/join/mgps/aidl/FightProtocal;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_ACK:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .line 106
    if-ne v3, v4, :cond_4

    .line 107
    .line 108
    :try_start_1
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getNo()B

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    sget-byte v3, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignal:B

    .line 113
    .line 114
    if-ne v0, v3, :cond_3

    .line 115
    .line 116
    new-instance v0, Landroid/os/Message;

    .line 117
    .line 118
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 119
    .line 120
    .line 121
    const/16 v3, 0x2329

    .line 122
    .line 123
    iput v3, v0, Landroid/os/Message;->what:I

    .line 124
    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getBrand()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v4, "-"

    .line 138
    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getOpponent()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 156
    .line 157
    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 158
    .line 159
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 164
    .line 165
    .line 166
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread$c;

    .line 167
    .line 168
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 169
    .line 170
    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 171
    .line 172
    invoke-direct {v0, v2}, Lcom/join/mgps/aidl/MGWifiClientThread$c;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    .line 177
    .line 178
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;

    .line 179
    .line 180
    invoke-direct {v0, p0}, Lcom/join/mgps/aidl/MGWifiClientThread$a$a$a;-><init>(Lcom/join/mgps/aidl/MGWifiClientThread$a$a;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 184
    .line 185
    .line 186
    goto/16 :goto_0

    .line 187
    .line 188
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 189
    .line 190
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 191
    .line 192
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->context:Landroid/content/Context;

    .line 193
    .line 194
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v2, v0}, Lcom/join/mgps/aidl/FightProtocal;->setOpponent(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 212
    .line 213
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackSignalClient(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 229
    .line 230
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 231
    .line 232
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 237
    .line 238
    .line 239
    goto/16 :goto_0

    .line 240
    .line 241
    :catch_0
    move-exception v0

    .line 242
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 248
    .line 249
    .line 250
    move-result v3

    .line 251
    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_DISCONNECT:B

    .line 252
    .line 253
    const/4 v5, 0x0

    .line 254
    if-ne v3, v4, :cond_5

    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 257
    .line 258
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 259
    .line 260
    iput-boolean v5, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 261
    .line 262
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-static {v2}, Lcom/join/mgps/aidl/FightProtocalManager;->ackDisconnect(Lcom/join/mgps/aidl/FightProtocal;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 275
    .line 276
    .line 277
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 278
    .line 279
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 280
    .line 281
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$200(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/io/BufferedOutputStream;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 286
    .line 287
    .line 288
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 289
    .line 290
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 291
    .line 292
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 293
    .line 294
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 295
    .line 296
    .line 297
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 298
    .line 299
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 300
    .line 301
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    const/16 v2, 0x232a

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 308
    .line 309
    .line 310
    goto/16 :goto_0

    .line 311
    .line 312
    :cond_5
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 313
    .line 314
    .line 315
    move-result v3

    .line 316
    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_AckDISCONNECT:B

    .line 317
    .line 318
    if-ne v3, v4, :cond_6

    .line 319
    .line 320
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 321
    .line 322
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 323
    .line 324
    iput-boolean v5, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 325
    .line 326
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 327
    .line 328
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 329
    .line 330
    .line 331
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 332
    .line 333
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 334
    .line 335
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    const/16 v2, 0x2331

    .line 340
    .line 341
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 342
    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :cond_6
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 347
    .line 348
    .line 349
    move-result v3

    .line 350
    sget-byte v4, Lcom/join/mgps/aidl/FightProtocal;->TYPE_STARTGAME:B

    .line 351
    .line 352
    if-ne v3, v4, :cond_7

    .line 353
    .line 354
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 355
    .line 356
    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 357
    .line 358
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    new-instance v2, Ljava/lang/StringBuilder;

    .line 362
    .line 363
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .line 365
    .line 366
    const-string v3, "start game:"

    .line 367
    .line 368
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 372
    .line 373
    .line 374
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 375
    .line 376
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 377
    .line 378
    iput-boolean v5, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->monitoring:Z

    .line 379
    .line 380
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 381
    .line 382
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 386
    .line 387
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 388
    .line 389
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    const/16 v2, 0x232d

    .line 394
    .line 395
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 396
    .line 397
    .line 398
    goto/16 :goto_0

    .line 399
    .line 400
    :cond_7
    invoke-virtual {v2}, Lcom/join/mgps/aidl/FightProtocal;->getType()B

    .line 401
    .line 402
    .line 403
    move-result v0

    .line 404
    sget-byte v2, Lcom/join/mgps/aidl/FightProtocal;->TYPE_SYNC:B

    .line 405
    .line 406
    if-ne v0, v2, :cond_0

    .line 407
    .line 408
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 409
    .line 410
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 411
    .line 412
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 413
    .line 414
    .line 415
    move-result-wide v2

    .line 416
    iput-wide v2, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->lastSyncTime:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 417
    .line 418
    goto/16 :goto_0

    .line 419
    .line 420
    :catch_1
    move-exception v0

    .line 421
    iget-object v2, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 422
    .line 423
    iget-object v2, v2, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 424
    .line 425
    invoke-static {v2}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 432
    .line 433
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 434
    .line 435
    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 439
    .line 440
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 441
    .line 442
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$500(Lcom/join/mgps/aidl/MGWifiClientThread;)Landroid/os/Handler;

    .line 443
    .line 444
    .line 445
    move-result-object v0

    .line 446
    const/16 v2, 0x232b

    .line 447
    .line 448
    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 449
    .line 450
    .line 451
    :try_start_3
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 452
    .line 453
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 454
    .line 455
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread;->socket:Ljava/net/Socket;

    .line 456
    .line 457
    if-eqz v0, :cond_8

    .line 458
    .line 459
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 460
    .line 461
    .line 462
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 463
    .line 464
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 465
    .line 466
    invoke-static {v0, v1}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$602(Lcom/join/mgps/aidl/MGWifiClientThread;Ljava/lang/String;)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    iget-object v0, p0, Lcom/join/mgps/aidl/MGWifiClientThread$a$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread$a;

    .line 470
    .line 471
    iget-object v0, v0, Lcom/join/mgps/aidl/MGWifiClientThread$a;->b:Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 472
    .line 473
    invoke-static {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->access$300(Lcom/join/mgps/aidl/MGWifiClientThread;)Ljava/lang/String;

    .line 474
    .line 475
    .line 476
    return-void

    .line 477
    :catch_2
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 479
    .line 480
    .line 481
    goto/16 :goto_0
.end method
