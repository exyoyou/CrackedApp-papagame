.class Lcom/join/mgps/helper/MGFightClientManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/helper/MGFightClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/helper/MGFightClientManager;


# direct methods
.method constructor <init>(Lcom/join/mgps/helper/MGFightClientManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    const-string v1, ";mGameName="

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    if-eq v0, v2, :cond_a

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    const/4 v4, 0x0

    .line 15
    if-eq v0, v3, :cond_5

    .line 16
    .line 17
    const/16 v1, 0x232d

    .line 18
    .line 19
    if-eq v0, v1, :cond_4

    .line 20
    .line 21
    const/16 v1, 0x2331

    .line 22
    .line 23
    if-eq v0, v1, :cond_3

    .line 24
    .line 25
    const/16 v1, 0x4e20

    .line 26
    .line 27
    if-eq v0, v1, :cond_1

    .line 28
    .line 29
    packed-switch v0, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto/16 :goto_3

    .line 33
    .line 34
    :pswitch_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 35
    .line 36
    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$102(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->i()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 58
    .line 59
    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 65
    .line 66
    .line 67
    goto/16 :goto_3

    .line 68
    .line 69
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->b()V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 79
    .line 80
    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$102(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 81
    .line 82
    .line 83
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 93
    .line 94
    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_3

    .line 103
    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1100(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1100(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$d;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lcom/join/mgps/helper/MGFightClientManager$d;->a()V

    .line 119
    .line 120
    .line 121
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 122
    .line 123
    invoke-static {v0, v2}, Lcom/join/mgps/helper/MGFightClientManager;->access$502(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v2, "store ssid in history:"

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 161
    .line 162
    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1200(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/util/Map;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-interface {v0, p1}, Lcom/join/mgps/callbacks/g;->g(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 185
    .line 186
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 187
    .line 188
    .line 189
    goto/16 :goto_3

    .line 190
    .line 191
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 192
    .line 193
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 197
    .line 198
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 199
    .line 200
    .line 201
    move-result p1

    .line 202
    if-eqz p1, :cond_2

    .line 203
    .line 204
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->d()V

    .line 211
    .line 212
    .line 213
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 214
    .line 215
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_3

    .line 219
    .line 220
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 221
    .line 222
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->j()V

    .line 227
    .line 228
    .line 229
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 230
    .line 231
    invoke-static {p1, v4}, Lcom/join/mgps/helper/MGFightClientManager;->access$402(Lcom/join/mgps/helper/MGFightClientManager;Z)Z

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 237
    .line 238
    .line 239
    goto/16 :goto_3

    .line 240
    .line 241
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 242
    .line 243
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->f()V

    .line 248
    .line 249
    .line 250
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 251
    .line 252
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 253
    .line 254
    .line 255
    goto/16 :goto_3

    .line 256
    .line 257
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 258
    .line 259
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 264
    .line 265
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 274
    .line 275
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    .line 279
    .line 280
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .line 282
    .line 283
    const-string v3, "\u8fde\u63a5\u7f51\u7edc\u6210\u529f:"

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 295
    .line 296
    invoke-static {v1}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v1

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 304
    .line 305
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_6

    .line 314
    .line 315
    return-void

    .line 316
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 317
    .line 318
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    if-eqz v0, :cond_9

    .line 327
    .line 328
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 329
    .line 330
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    if-eqz v0, :cond_7

    .line 335
    .line 336
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 337
    .line 338
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->getSsid()Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v0

    .line 350
    if-nez v0, :cond_7

    .line 351
    .line 352
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 353
    .line 354
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    const-string v1, "wifiClientThread is not null.but ssid is different so destory.new="

    .line 363
    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    const-string p1, ";old="

    .line 371
    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 376
    .line 377
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiClientThread;->getSsid()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 389
    .line 390
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiClientThread;->destroy()V

    .line 395
    .line 396
    .line 397
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 398
    .line 399
    const/4 v0, 0x0

    .line 400
    invoke-static {p1, v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1002(Lcom/join/mgps/helper/MGFightClientManager;Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 401
    .line 402
    .line 403
    goto :goto_0

    .line 404
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 405
    .line 406
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 407
    .line 408
    .line 409
    move-result-object p1

    .line 410
    if-eqz p1, :cond_8

    .line 411
    .line 412
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 413
    .line 414
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    new-instance p1, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    const-string v0, "wifiClientThread is not null ["

    .line 423
    .line 424
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 428
    .line 429
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v0}, Lcom/join/mgps/aidl/MGWifiClientThread;->getSsid()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    const-string v0, "],so return."

    .line 441
    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    return-void

    .line 446
    :cond_8
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 447
    .line 448
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    new-instance p1, Ljava/lang/StringBuilder;

    .line 452
    .line 453
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    .line 455
    .line 456
    const-string v0, "\u5f00\u59cb\u8fde\u63a5\u670d\u52a1\u5668...wifiClientThread="

    .line 457
    .line 458
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    .line 460
    .line 461
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 462
    .line 463
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 468
    .line 469
    .line 470
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 471
    .line 472
    new-instance v0, Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 473
    .line 474
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    .line 475
    .line 476
    .line 477
    move-result-object v1

    .line 478
    iget-object v3, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 479
    .line 480
    iget-object v5, v3, Lcom/join/mgps/helper/MGFightClientManager;->handler:Landroid/os/Handler;

    .line 481
    .line 482
    invoke-static {v3}, Lcom/join/mgps/helper/MGFightClientManager;->access$900(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/Util/WifiUtils;

    .line 483
    .line 484
    .line 485
    move-result-object v3

    .line 486
    iget-object v6, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 487
    .line 488
    invoke-static {v6}, Lcom/join/mgps/helper/MGFightClientManager;->access$800(Lcom/join/mgps/helper/MGFightClientManager;)Landroid/content/Context;

    .line 489
    .line 490
    .line 491
    move-result-object v6

    .line 492
    invoke-virtual {v3, v6}, Lcom/join/mgps/Util/WifiUtils;->getSSID(Landroid/content/Context;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v3

    .line 496
    invoke-direct {v0, v1, v5, v3}, Lcom/join/mgps/aidl/MGWifiClientThread;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 497
    .line 498
    .line 499
    invoke-static {p1, v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$1002(Lcom/join/mgps/helper/MGFightClientManager;Lcom/join/mgps/aidl/MGWifiClientThread;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 500
    .line 501
    .line 502
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 503
    .line 504
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$1000(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/aidl/MGWifiClientThread;

    .line 505
    .line 506
    .line 507
    move-result-object p1

    .line 508
    invoke-virtual {p1}, Lcom/join/mgps/aidl/MGWifiClientThread;->run()V

    .line 509
    .line 510
    .line 511
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 512
    .line 513
    iput-boolean v2, p1, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    .line 515
    goto :goto_1

    .line 516
    :catch_0
    move-exception p1

    .line 517
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 518
    .line 519
    .line 520
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 521
    .line 522
    iput-boolean v4, p1, Lcom/join/mgps/helper/MGFightClientManager;->isConnecting:Z

    .line 523
    .line 524
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 525
    .line 526
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 527
    .line 528
    .line 529
    move-result-object p1

    .line 530
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 531
    .line 532
    .line 533
    goto/16 :goto_3

    .line 534
    .line 535
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 536
    .line 537
    iput-boolean v4, p1, Lcom/join/mgps/helper/MGFightClientManager;->processingScan:Z

    .line 538
    .line 539
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$700(Lcom/join/mgps/helper/MGFightClientManager;)V

    .line 540
    .line 541
    .line 542
    goto/16 :goto_3

    .line 543
    .line 544
    :cond_a
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 545
    .line 546
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$400(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 547
    .line 548
    .line 549
    move-result p1

    .line 550
    if-eqz p1, :cond_c

    .line 551
    .line 552
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 553
    .line 554
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$500(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 555
    .line 556
    .line 557
    move-result p1

    .line 558
    if-nez p1, :cond_c

    .line 559
    .line 560
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 561
    .line 562
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 563
    .line 564
    .line 565
    move-result p1

    .line 566
    if-nez p1, :cond_c

    .line 567
    .line 568
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 569
    .line 570
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object p1

    .line 574
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 575
    .line 576
    .line 577
    move-result p1

    .line 578
    if-eqz p1, :cond_b

    .line 579
    .line 580
    goto :goto_2

    .line 581
    :cond_b
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 582
    .line 583
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$700(Lcom/join/mgps/helper/MGFightClientManager;)V

    .line 584
    .line 585
    .line 586
    goto :goto_3

    .line 587
    :cond_c
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 588
    .line 589
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$000(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 590
    .line 591
    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    .line 593
    .line 594
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 595
    .line 596
    .line 597
    const-string v0, "interrupt ApScan.running="

    .line 598
    .line 599
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    .line 601
    .line 602
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 603
    .line 604
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$400(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    const-string v0, ";isConnected="

    .line 612
    .line 613
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    .line 615
    .line 616
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 617
    .line 618
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$500(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v0, ";isEnteringRoom="

    .line 626
    .line 627
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 631
    .line 632
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$100(Lcom/join/mgps/helper/MGFightClientManager;)Z

    .line 633
    .line 634
    .line 635
    move-result v0

    .line 636
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget-object v0, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 643
    .line 644
    invoke-static {v0}, Lcom/join/mgps/helper/MGFightClientManager;->access$600(Lcom/join/mgps/helper/MGFightClientManager;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0

    .line 648
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    return-void

    .line 652
    :cond_d
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 653
    .line 654
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$300(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/helper/MGFightClientManager$e;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager$e;->b()V

    .line 659
    .line 660
    .line 661
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 662
    .line 663
    invoke-static {p1}, Lcom/join/mgps/helper/MGFightClientManager;->access$200(Lcom/join/mgps/helper/MGFightClientManager;)Lcom/join/mgps/callbacks/g;

    .line 664
    .line 665
    .line 666
    move-result-object p1

    .line 667
    invoke-interface {p1}, Lcom/join/mgps/callbacks/g;->h()V

    .line 668
    .line 669
    .line 670
    iget-object p1, p0, Lcom/join/mgps/helper/MGFightClientManager$a;->a:Lcom/join/mgps/helper/MGFightClientManager;

    .line 671
    .line 672
    invoke-virtual {p1}, Lcom/join/mgps/helper/MGFightClientManager;->unregisterReceiver()V

    .line 673
    .line 674
    .line 675
    :goto_3
    return-void

    .line 676
    nop

    .line 677
    :pswitch_data_0
    .packed-switch 0x2329
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
