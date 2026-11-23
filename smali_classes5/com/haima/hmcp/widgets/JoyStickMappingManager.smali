.class public Lcom/haima/hmcp/widgets/JoyStickMappingManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JOYSTICK_FIXED_DEVICE_ID:I = 0x3e8

.field public static final KEY_CODE_LEFT_STICK_DOWN:I = 0x3e6

.field public static final KEY_CODE_LEFT_STICK_LEFT:I = 0x3e5

.field public static final KEY_CODE_LEFT_STICK_RIGHT:I = 0x3e4

.field public static final KEY_CODE_LEFT_STICK_UP:I = 0x3e7

.field public static final KEY_CODE_RIGHT_STICK_DOWN:I = 0x3e0

.field public static final KEY_CODE_RIGHT_STICK_LEFT:I = 0x3e1

.field public static final KEY_CODE_RIGHT_STICK_RIGHT:I = 0x3e2

.field public static final KEY_CODE_RIGHT_STICK_UP:I = 0x3df

.field private static TAG:Ljava/lang/String; = "JoyStickMappingManager"

.field private static final actionMouseButtons:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static isKeyboardMapperGamepadEnable:Z

.field public static isTouchesMoveMapperRockerEnable:Z

.field private static keyCodeNameMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sendEventCodeMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    sput-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    sput-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isTouchesMoveMapperRockerEnable:Z

    .line 20
    .line 21
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 22
    .line 23
    const/16 v1, 0x1d

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "KeyA"

    .line 30
    .line 31
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 35
    .line 36
    const/16 v1, 0x1e

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "KeyB"

    .line 43
    .line 44
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 48
    .line 49
    const/16 v1, 0x1f

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-string v2, "KeyC"

    .line 56
    .line 57
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 61
    .line 62
    const/16 v1, 0x20

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "KeyD"

    .line 69
    .line 70
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 74
    .line 75
    const/16 v1, 0x21

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "KeyE"

    .line 82
    .line 83
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 87
    .line 88
    const/16 v1, 0x22

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "KeyF"

    .line 95
    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 100
    .line 101
    const/16 v1, 0x23

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "KeyG"

    .line 108
    .line 109
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 113
    .line 114
    const/16 v1, 0x24

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "KeyH"

    .line 121
    .line 122
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 126
    .line 127
    const/16 v1, 0x25

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "KeyI"

    .line 134
    .line 135
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 139
    .line 140
    const/16 v1, 0x26

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "KeyJ"

    .line 147
    .line 148
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 152
    .line 153
    const/16 v1, 0x27

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "KeyK"

    .line 160
    .line 161
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 165
    .line 166
    const/16 v1, 0x28

    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "KeyL"

    .line 173
    .line 174
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 178
    .line 179
    const/16 v1, 0x29

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    const-string v2, "KeyM"

    .line 186
    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 191
    .line 192
    const/16 v1, 0x2a

    .line 193
    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v2, "KeyN"

    .line 199
    .line 200
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 204
    .line 205
    const/16 v1, 0x2b

    .line 206
    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "KeyO"

    .line 212
    .line 213
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 217
    .line 218
    const/16 v1, 0x2c

    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "KeyP"

    .line 225
    .line 226
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 230
    .line 231
    const/16 v1, 0x2d

    .line 232
    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const-string v2, "KeyQ"

    .line 238
    .line 239
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 243
    .line 244
    const/16 v1, 0x2e

    .line 245
    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const-string v2, "KeyR"

    .line 251
    .line 252
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 256
    .line 257
    const/16 v1, 0x2f

    .line 258
    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v2, "KeyS"

    .line 264
    .line 265
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 269
    .line 270
    const/16 v1, 0x30

    .line 271
    .line 272
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const-string v2, "KeyT"

    .line 277
    .line 278
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 282
    .line 283
    const/16 v1, 0x31

    .line 284
    .line 285
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v2, "KeyU"

    .line 290
    .line 291
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 295
    .line 296
    const/16 v1, 0x32

    .line 297
    .line 298
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    const-string v2, "KeyV"

    .line 303
    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 308
    .line 309
    const/16 v1, 0x33

    .line 310
    .line 311
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    const-string v2, "KeyW"

    .line 316
    .line 317
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 321
    .line 322
    const/16 v1, 0x34

    .line 323
    .line 324
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    const-string v2, "KeyX"

    .line 329
    .line 330
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 334
    .line 335
    const/16 v1, 0x35

    .line 336
    .line 337
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    const-string v2, "KeyY"

    .line 342
    .line 343
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 347
    .line 348
    const/16 v1, 0x36

    .line 349
    .line 350
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const-string v2, "KeyZ"

    .line 355
    .line 356
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    .line 358
    .line 359
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 360
    .line 361
    const/4 v1, 0x7

    .line 362
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    const-string v2, "Digit0"

    .line 367
    .line 368
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 372
    .line 373
    const/16 v1, 0x8

    .line 374
    .line 375
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const-string v2, "Digit1"

    .line 380
    .line 381
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 385
    .line 386
    const/16 v1, 0x9

    .line 387
    .line 388
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    const-string v2, "Digit2"

    .line 393
    .line 394
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 398
    .line 399
    const/16 v1, 0xa

    .line 400
    .line 401
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    const-string v2, "Digit3"

    .line 406
    .line 407
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 411
    .line 412
    const/16 v1, 0xb

    .line 413
    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    const-string v2, "Digit4"

    .line 419
    .line 420
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    .line 422
    .line 423
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 424
    .line 425
    const/16 v1, 0xc

    .line 426
    .line 427
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    const-string v2, "Digit5"

    .line 432
    .line 433
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 437
    .line 438
    const/16 v1, 0xd

    .line 439
    .line 440
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    const-string v2, "Digit6"

    .line 445
    .line 446
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 450
    .line 451
    const/16 v1, 0xe

    .line 452
    .line 453
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    const-string v2, "Digit7"

    .line 458
    .line 459
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 463
    .line 464
    const/16 v1, 0xf

    .line 465
    .line 466
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    const-string v2, "Digit8"

    .line 471
    .line 472
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 476
    .line 477
    const/16 v1, 0x10

    .line 478
    .line 479
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const-string v2, "Digit9"

    .line 484
    .line 485
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 489
    .line 490
    const/16 v1, 0x83

    .line 491
    .line 492
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 493
    .line 494
    .line 495
    move-result-object v1

    .line 496
    const-string v2, "F1"

    .line 497
    .line 498
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    .line 500
    .line 501
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 502
    .line 503
    const/16 v1, 0x84

    .line 504
    .line 505
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 506
    .line 507
    .line 508
    move-result-object v1

    .line 509
    const-string v2, "F2"

    .line 510
    .line 511
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    .line 513
    .line 514
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 515
    .line 516
    const/16 v1, 0x85

    .line 517
    .line 518
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    const-string v2, "F3"

    .line 523
    .line 524
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 528
    .line 529
    const/16 v1, 0x86

    .line 530
    .line 531
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    const-string v2, "F4"

    .line 536
    .line 537
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 541
    .line 542
    const/16 v1, 0x87

    .line 543
    .line 544
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    const-string v2, "F5"

    .line 549
    .line 550
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .line 552
    .line 553
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 554
    .line 555
    const/16 v1, 0x88

    .line 556
    .line 557
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    const-string v2, "F6"

    .line 562
    .line 563
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 567
    .line 568
    const/16 v1, 0x89

    .line 569
    .line 570
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    .line 572
    .line 573
    move-result-object v1

    .line 574
    const-string v2, "F7"

    .line 575
    .line 576
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    .line 578
    .line 579
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 580
    .line 581
    const/16 v1, 0x8a

    .line 582
    .line 583
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 584
    .line 585
    .line 586
    move-result-object v1

    .line 587
    const-string v2, "F8"

    .line 588
    .line 589
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 593
    .line 594
    const/16 v1, 0x8b

    .line 595
    .line 596
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    const-string v2, "F9"

    .line 601
    .line 602
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 606
    .line 607
    const/16 v1, 0x8c

    .line 608
    .line 609
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    const-string v2, "F10"

    .line 614
    .line 615
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    .line 617
    .line 618
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 619
    .line 620
    const/16 v1, 0x8d

    .line 621
    .line 622
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    const-string v2, "F11"

    .line 627
    .line 628
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    .line 630
    .line 631
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 632
    .line 633
    const/16 v1, 0x8e

    .line 634
    .line 635
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 636
    .line 637
    .line 638
    move-result-object v1

    .line 639
    const-string v2, "F12"

    .line 640
    .line 641
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    .line 643
    .line 644
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 645
    .line 646
    const/16 v1, 0x42

    .line 647
    .line 648
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    const-string v2, "Enter"

    .line 653
    .line 654
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 658
    .line 659
    const/16 v1, 0x6f

    .line 660
    .line 661
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 662
    .line 663
    .line 664
    move-result-object v1

    .line 665
    const-string v2, "Escape"

    .line 666
    .line 667
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 668
    .line 669
    .line 670
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 671
    .line 672
    const/16 v1, 0x43

    .line 673
    .line 674
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 675
    .line 676
    .line 677
    move-result-object v1

    .line 678
    const-string v2, "Backspace"

    .line 679
    .line 680
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    .line 682
    .line 683
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 684
    .line 685
    const/16 v1, 0x3d

    .line 686
    .line 687
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 688
    .line 689
    .line 690
    move-result-object v1

    .line 691
    const-string v2, "Tab"

    .line 692
    .line 693
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    .line 695
    .line 696
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 697
    .line 698
    const/16 v1, 0x3e

    .line 699
    .line 700
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 701
    .line 702
    .line 703
    move-result-object v1

    .line 704
    const-string v2, "Space"

    .line 705
    .line 706
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 710
    .line 711
    const/16 v1, 0x73

    .line 712
    .line 713
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    const-string v2, "CapsLock"

    .line 718
    .line 719
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .line 721
    .line 722
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 723
    .line 724
    const/16 v1, 0x78

    .line 725
    .line 726
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 727
    .line 728
    .line 729
    move-result-object v1

    .line 730
    const-string v2, "PrintScreen"

    .line 731
    .line 732
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 736
    .line 737
    const/16 v1, 0x74

    .line 738
    .line 739
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    const-string v2, "ScrollLock"

    .line 744
    .line 745
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    .line 747
    .line 748
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 749
    .line 750
    const/16 v1, 0x79

    .line 751
    .line 752
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    const-string v2, "Pause"

    .line 757
    .line 758
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 762
    .line 763
    const/16 v1, 0x7c

    .line 764
    .line 765
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v1

    .line 769
    const-string v2, "Insert"

    .line 770
    .line 771
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 775
    .line 776
    const/16 v1, 0x7a

    .line 777
    .line 778
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 779
    .line 780
    .line 781
    move-result-object v1

    .line 782
    const-string v2, "Home"

    .line 783
    .line 784
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 788
    .line 789
    const/16 v1, 0x5c

    .line 790
    .line 791
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 792
    .line 793
    .line 794
    move-result-object v1

    .line 795
    const-string v2, "PageUp"

    .line 796
    .line 797
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    .line 799
    .line 800
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 801
    .line 802
    const/16 v1, 0x70

    .line 803
    .line 804
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 805
    .line 806
    .line 807
    move-result-object v1

    .line 808
    const-string v2, "Delete"

    .line 809
    .line 810
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 814
    .line 815
    const/16 v1, 0x7b

    .line 816
    .line 817
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 818
    .line 819
    .line 820
    move-result-object v1

    .line 821
    const-string v2, "End"

    .line 822
    .line 823
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 824
    .line 825
    .line 826
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 827
    .line 828
    const/16 v1, 0x5d

    .line 829
    .line 830
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 831
    .line 832
    .line 833
    move-result-object v1

    .line 834
    const-string v2, "PageDown"

    .line 835
    .line 836
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .line 838
    .line 839
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 840
    .line 841
    const/16 v1, 0x13

    .line 842
    .line 843
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 844
    .line 845
    .line 846
    move-result-object v1

    .line 847
    const-string v2, "ArrowUp"

    .line 848
    .line 849
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 853
    .line 854
    const/16 v2, 0x14

    .line 855
    .line 856
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 857
    .line 858
    .line 859
    move-result-object v2

    .line 860
    const-string v3, "ArrowDown"

    .line 861
    .line 862
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 866
    .line 867
    const/16 v3, 0x15

    .line 868
    .line 869
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 870
    .line 871
    .line 872
    move-result-object v3

    .line 873
    const-string v4, "ArrowLeft"

    .line 874
    .line 875
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 879
    .line 880
    const/16 v4, 0x16

    .line 881
    .line 882
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 883
    .line 884
    .line 885
    move-result-object v4

    .line 886
    const-string v5, "ArrowRight"

    .line 887
    .line 888
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    .line 890
    .line 891
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 892
    .line 893
    const/16 v5, 0x45

    .line 894
    .line 895
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 896
    .line 897
    .line 898
    move-result-object v5

    .line 899
    const-string v6, "Minus"

    .line 900
    .line 901
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    .line 903
    .line 904
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 905
    .line 906
    const/16 v5, 0x46

    .line 907
    .line 908
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 909
    .line 910
    .line 911
    move-result-object v5

    .line 912
    const-string v6, "Equal"

    .line 913
    .line 914
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 918
    .line 919
    const/16 v5, 0x47

    .line 920
    .line 921
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 922
    .line 923
    .line 924
    move-result-object v5

    .line 925
    const-string v6, "BracketLeft"

    .line 926
    .line 927
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 928
    .line 929
    .line 930
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 931
    .line 932
    const/16 v5, 0x48

    .line 933
    .line 934
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 935
    .line 936
    .line 937
    move-result-object v5

    .line 938
    const-string v6, "BracketRight"

    .line 939
    .line 940
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    .line 942
    .line 943
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 944
    .line 945
    const/16 v5, 0x49

    .line 946
    .line 947
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 948
    .line 949
    .line 950
    move-result-object v5

    .line 951
    const-string v6, "Backslash"

    .line 952
    .line 953
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    .line 955
    .line 956
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 957
    .line 958
    const/16 v6, 0x4a

    .line 959
    .line 960
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 961
    .line 962
    .line 963
    move-result-object v6

    .line 964
    const-string v7, "Semicolon"

    .line 965
    .line 966
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 967
    .line 968
    .line 969
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 970
    .line 971
    const/16 v6, 0x4b

    .line 972
    .line 973
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 974
    .line 975
    .line 976
    move-result-object v6

    .line 977
    const-string v7, "Quote"

    .line 978
    .line 979
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 980
    .line 981
    .line 982
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 983
    .line 984
    const/16 v6, 0x44

    .line 985
    .line 986
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 987
    .line 988
    .line 989
    move-result-object v6

    .line 990
    const-string v7, "Backquote"

    .line 991
    .line 992
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 996
    .line 997
    const/16 v6, 0x37

    .line 998
    .line 999
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v6

    .line 1003
    const-string v7, "Comma"

    .line 1004
    .line 1005
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1006
    .line 1007
    .line 1008
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1009
    .line 1010
    const/16 v6, 0x38

    .line 1011
    .line 1012
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v6

    .line 1016
    const-string v7, "Period"

    .line 1017
    .line 1018
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    .line 1020
    .line 1021
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1022
    .line 1023
    const/16 v6, 0x4c

    .line 1024
    .line 1025
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1026
    .line 1027
    .line 1028
    move-result-object v6

    .line 1029
    const-string v7, "Slash"

    .line 1030
    .line 1031
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .line 1033
    .line 1034
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1035
    .line 1036
    const-string v6, "IntlBackslash"

    .line 1037
    .line 1038
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    .line 1040
    .line 1041
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1042
    .line 1043
    const/16 v5, 0x90

    .line 1044
    .line 1045
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v5

    .line 1049
    const-string v6, "Numpad0"

    .line 1050
    .line 1051
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    .line 1053
    .line 1054
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1055
    .line 1056
    const/16 v5, 0x91

    .line 1057
    .line 1058
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1059
    .line 1060
    .line 1061
    move-result-object v5

    .line 1062
    const-string v6, "Numpad1"

    .line 1063
    .line 1064
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    .line 1066
    .line 1067
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1068
    .line 1069
    const/16 v5, 0x92

    .line 1070
    .line 1071
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v5

    .line 1075
    const-string v6, "Numpad2"

    .line 1076
    .line 1077
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    .line 1079
    .line 1080
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1081
    .line 1082
    const/16 v5, 0x93

    .line 1083
    .line 1084
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v5

    .line 1088
    const-string v6, "Numpad3"

    .line 1089
    .line 1090
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    .line 1092
    .line 1093
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1094
    .line 1095
    const/16 v5, 0x94

    .line 1096
    .line 1097
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v5

    .line 1101
    const-string v6, "Numpad4"

    .line 1102
    .line 1103
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    .line 1105
    .line 1106
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1107
    .line 1108
    const/16 v5, 0x95

    .line 1109
    .line 1110
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1111
    .line 1112
    .line 1113
    move-result-object v5

    .line 1114
    const-string v6, "Numpad5"

    .line 1115
    .line 1116
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    .line 1118
    .line 1119
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1120
    .line 1121
    const/16 v5, 0x96

    .line 1122
    .line 1123
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1124
    .line 1125
    .line 1126
    move-result-object v5

    .line 1127
    const-string v6, "Numpad6"

    .line 1128
    .line 1129
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1133
    .line 1134
    const/16 v5, 0x97

    .line 1135
    .line 1136
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1137
    .line 1138
    .line 1139
    move-result-object v5

    .line 1140
    const-string v6, "Numpad7"

    .line 1141
    .line 1142
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    .line 1144
    .line 1145
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1146
    .line 1147
    const/16 v5, 0x98

    .line 1148
    .line 1149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v5

    .line 1153
    const-string v6, "Numpad8"

    .line 1154
    .line 1155
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    .line 1157
    .line 1158
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1159
    .line 1160
    const/16 v5, 0x99

    .line 1161
    .line 1162
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1163
    .line 1164
    .line 1165
    move-result-object v5

    .line 1166
    const-string v6, "Numpad9"

    .line 1167
    .line 1168
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    .line 1170
    .line 1171
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1172
    .line 1173
    const/16 v5, 0x8f

    .line 1174
    .line 1175
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1176
    .line 1177
    .line 1178
    move-result-object v5

    .line 1179
    const-string v6, "NumLock"

    .line 1180
    .line 1181
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    .line 1183
    .line 1184
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1185
    .line 1186
    const/16 v5, 0x9a

    .line 1187
    .line 1188
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1189
    .line 1190
    .line 1191
    move-result-object v5

    .line 1192
    const-string v6, "NumpadDivide"

    .line 1193
    .line 1194
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    .line 1196
    .line 1197
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1198
    .line 1199
    const/16 v5, 0x9b

    .line 1200
    .line 1201
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v5

    .line 1205
    const-string v6, "NumpadMultiply"

    .line 1206
    .line 1207
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    .line 1209
    .line 1210
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1211
    .line 1212
    const/16 v5, 0x9c

    .line 1213
    .line 1214
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1215
    .line 1216
    .line 1217
    move-result-object v5

    .line 1218
    const-string v6, "NumpadSubtract"

    .line 1219
    .line 1220
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    .line 1222
    .line 1223
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1224
    .line 1225
    const/16 v5, 0x9d

    .line 1226
    .line 1227
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1228
    .line 1229
    .line 1230
    move-result-object v5

    .line 1231
    const-string v6, "NumpadAdd"

    .line 1232
    .line 1233
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    .line 1235
    .line 1236
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1237
    .line 1238
    const/16 v5, 0xa0

    .line 1239
    .line 1240
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v5

    .line 1244
    const-string v6, "NumpadEnter"

    .line 1245
    .line 1246
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    .line 1248
    .line 1249
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1250
    .line 1251
    const/16 v5, 0x9e

    .line 1252
    .line 1253
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1254
    .line 1255
    .line 1256
    move-result-object v5

    .line 1257
    const-string v6, "NumpadDecimal"

    .line 1258
    .line 1259
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    .line 1261
    .line 1262
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1263
    .line 1264
    const/16 v5, 0xa1

    .line 1265
    .line 1266
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1267
    .line 1268
    .line 1269
    move-result-object v5

    .line 1270
    const-string v6, "NumpadEqual"

    .line 1271
    .line 1272
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    .line 1274
    .line 1275
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1276
    .line 1277
    const/16 v5, 0x71

    .line 1278
    .line 1279
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v5

    .line 1283
    const-string v6, "ControlLeft"

    .line 1284
    .line 1285
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    .line 1287
    .line 1288
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1289
    .line 1290
    const/16 v5, 0x3b

    .line 1291
    .line 1292
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v5

    .line 1296
    const-string v6, "ShiftLeft"

    .line 1297
    .line 1298
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    .line 1300
    .line 1301
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1302
    .line 1303
    const/16 v5, 0x39

    .line 1304
    .line 1305
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1306
    .line 1307
    .line 1308
    move-result-object v5

    .line 1309
    const-string v6, "AltLeft"

    .line 1310
    .line 1311
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1312
    .line 1313
    .line 1314
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1315
    .line 1316
    const/16 v5, 0x75

    .line 1317
    .line 1318
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v5

    .line 1322
    const-string v6, "MetaLeft"

    .line 1323
    .line 1324
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1325
    .line 1326
    .line 1327
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1328
    .line 1329
    const/16 v5, 0x72

    .line 1330
    .line 1331
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1332
    .line 1333
    .line 1334
    move-result-object v5

    .line 1335
    const-string v6, "ControlRight"

    .line 1336
    .line 1337
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1338
    .line 1339
    .line 1340
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1341
    .line 1342
    const/16 v5, 0x3c

    .line 1343
    .line 1344
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v5

    .line 1348
    const-string v6, "ShiftRight"

    .line 1349
    .line 1350
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1351
    .line 1352
    .line 1353
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1354
    .line 1355
    const/16 v5, 0x3a

    .line 1356
    .line 1357
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1358
    .line 1359
    .line 1360
    move-result-object v5

    .line 1361
    const-string v6, "AltRight"

    .line 1362
    .line 1363
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1364
    .line 1365
    .line 1366
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1367
    .line 1368
    const/16 v5, 0x76

    .line 1369
    .line 1370
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v5

    .line 1374
    const-string v6, "MetaRight"

    .line 1375
    .line 1376
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    .line 1378
    .line 1379
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1380
    .line 1381
    const/16 v5, 0xa4

    .line 1382
    .line 1383
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1384
    .line 1385
    .line 1386
    move-result-object v5

    .line 1387
    const-string v6, "AudioVolumeMute"

    .line 1388
    .line 1389
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    .line 1391
    .line 1392
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1393
    .line 1394
    const/16 v5, 0x18

    .line 1395
    .line 1396
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1397
    .line 1398
    .line 1399
    move-result-object v5

    .line 1400
    const-string v6, "AudioVolumeUp"

    .line 1401
    .line 1402
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    .line 1404
    .line 1405
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1406
    .line 1407
    const/16 v5, 0x19

    .line 1408
    .line 1409
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v5

    .line 1413
    const-string v6, "AudioVolumeDown"

    .line 1414
    .line 1415
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    .line 1417
    .line 1418
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1419
    .line 1420
    const/16 v5, 0x1a

    .line 1421
    .line 1422
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1423
    .line 1424
    .line 1425
    move-result-object v5

    .line 1426
    const-string v6, "Power"

    .line 1427
    .line 1428
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    .line 1430
    .line 1431
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1432
    .line 1433
    const/16 v5, 0x103

    .line 1434
    .line 1435
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1436
    .line 1437
    .line 1438
    move-result-object v5

    .line 1439
    const-string v6, "Help"

    .line 1440
    .line 1441
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    .line 1443
    .line 1444
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1445
    .line 1446
    const/16 v5, 0x52

    .line 1447
    .line 1448
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1449
    .line 1450
    .line 1451
    move-result-object v5

    .line 1452
    const-string v6, "Menu"

    .line 1453
    .line 1454
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1455
    .line 1456
    .line 1457
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1458
    .line 1459
    const/16 v5, 0x6d

    .line 1460
    .line 1461
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1462
    .line 1463
    .line 1464
    move-result-object v5

    .line 1465
    const-string v6, "Select"

    .line 1466
    .line 1467
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    .line 1469
    .line 1470
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1471
    .line 1472
    const/16 v6, 0x56

    .line 1473
    .line 1474
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v6

    .line 1478
    const-string v7, "Stop"

    .line 1479
    .line 1480
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1481
    .line 1482
    .line 1483
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1484
    .line 1485
    const/16 v6, 0x115

    .line 1486
    .line 1487
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1488
    .line 1489
    .line 1490
    move-result-object v6

    .line 1491
    const-string v7, "Cut"

    .line 1492
    .line 1493
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1494
    .line 1495
    .line 1496
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1497
    .line 1498
    const/16 v6, 0x116

    .line 1499
    .line 1500
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v6

    .line 1504
    const-string v7, "Copy"

    .line 1505
    .line 1506
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    .line 1508
    .line 1509
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 1510
    .line 1511
    const/16 v6, 0x117

    .line 1512
    .line 1513
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v6

    .line 1517
    const-string v7, "Paste"

    .line 1518
    .line 1519
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    .line 1521
    .line 1522
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1523
    .line 1524
    const/16 v6, 0x60

    .line 1525
    .line 1526
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1527
    .line 1528
    .line 1529
    move-result-object v6

    .line 1530
    const-string v7, "A"

    .line 1531
    .line 1532
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1533
    .line 1534
    .line 1535
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1536
    .line 1537
    const/16 v6, 0x61

    .line 1538
    .line 1539
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v6

    .line 1543
    const-string v7, "B"

    .line 1544
    .line 1545
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    .line 1547
    .line 1548
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1549
    .line 1550
    const/16 v6, 0x63

    .line 1551
    .line 1552
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1553
    .line 1554
    .line 1555
    move-result-object v6

    .line 1556
    const-string v7, "X"

    .line 1557
    .line 1558
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1559
    .line 1560
    .line 1561
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1562
    .line 1563
    const/16 v6, 0x64

    .line 1564
    .line 1565
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1566
    .line 1567
    .line 1568
    move-result-object v6

    .line 1569
    const-string v7, "Y"

    .line 1570
    .line 1571
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    .line 1573
    .line 1574
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1575
    .line 1576
    const/16 v6, 0x66

    .line 1577
    .line 1578
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v6

    .line 1582
    const-string v7, "LB"

    .line 1583
    .line 1584
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    .line 1586
    .line 1587
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1588
    .line 1589
    const/16 v6, 0x67

    .line 1590
    .line 1591
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1592
    .line 1593
    .line 1594
    move-result-object v6

    .line 1595
    const-string v7, "RB"

    .line 1596
    .line 1597
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    .line 1599
    .line 1600
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1601
    .line 1602
    const/16 v6, 0x68

    .line 1603
    .line 1604
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1605
    .line 1606
    .line 1607
    move-result-object v6

    .line 1608
    const-string v7, "LT"

    .line 1609
    .line 1610
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1611
    .line 1612
    .line 1613
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1614
    .line 1615
    const/16 v6, 0x69

    .line 1616
    .line 1617
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v6

    .line 1621
    const-string v7, "RT"

    .line 1622
    .line 1623
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1624
    .line 1625
    .line 1626
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1627
    .line 1628
    const-string v6, "BACK"

    .line 1629
    .line 1630
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1631
    .line 1632
    .line 1633
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1634
    .line 1635
    const/16 v5, 0x6c

    .line 1636
    .line 1637
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v5

    .line 1641
    const-string v6, "START"

    .line 1642
    .line 1643
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    .line 1645
    .line 1646
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1647
    .line 1648
    const/16 v5, 0x6a

    .line 1649
    .line 1650
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v5

    .line 1654
    const-string v6, "LS"

    .line 1655
    .line 1656
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1657
    .line 1658
    .line 1659
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1660
    .line 1661
    const/16 v5, 0x6b

    .line 1662
    .line 1663
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1664
    .line 1665
    .line 1666
    move-result-object v5

    .line 1667
    const-string v6, "RS"

    .line 1668
    .line 1669
    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1670
    .line 1671
    .line 1672
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1673
    .line 1674
    const-string v5, "UP"

    .line 1675
    .line 1676
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1677
    .line 1678
    .line 1679
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1680
    .line 1681
    const-string v1, "LEFT"

    .line 1682
    .line 1683
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1684
    .line 1685
    .line 1686
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1687
    .line 1688
    const-string v1, "DOWN"

    .line 1689
    .line 1690
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    .line 1692
    .line 1693
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1694
    .line 1695
    const-string v1, "RIGHT"

    .line 1696
    .line 1697
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    .line 1699
    .line 1700
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1701
    .line 1702
    const/16 v1, 0x3e7

    .line 1703
    .line 1704
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v1

    .line 1708
    const-string v2, "LEFT_STICK:UP"

    .line 1709
    .line 1710
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1711
    .line 1712
    .line 1713
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1714
    .line 1715
    const/16 v1, 0x3e6

    .line 1716
    .line 1717
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1718
    .line 1719
    .line 1720
    move-result-object v1

    .line 1721
    const-string v2, "LEFT_STICK:DOWN"

    .line 1722
    .line 1723
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1724
    .line 1725
    .line 1726
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1727
    .line 1728
    const/16 v1, 0x3e5

    .line 1729
    .line 1730
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v1

    .line 1734
    const-string v2, "LEFT_STICK:LEFT"

    .line 1735
    .line 1736
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .line 1738
    .line 1739
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1740
    .line 1741
    const/16 v1, 0x3e4

    .line 1742
    .line 1743
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v1

    .line 1747
    const-string v2, "LEFT_STICK:RIGHT"

    .line 1748
    .line 1749
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1750
    .line 1751
    .line 1752
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1753
    .line 1754
    const/16 v1, 0x3df

    .line 1755
    .line 1756
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1757
    .line 1758
    .line 1759
    move-result-object v1

    .line 1760
    const-string v2, "RIGHT_STICK:UP"

    .line 1761
    .line 1762
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1763
    .line 1764
    .line 1765
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1766
    .line 1767
    const/16 v1, 0x3e0

    .line 1768
    .line 1769
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1770
    .line 1771
    .line 1772
    move-result-object v1

    .line 1773
    const-string v2, "RIGHT_STICK:DOWN"

    .line 1774
    .line 1775
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    .line 1777
    .line 1778
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1779
    .line 1780
    const/16 v1, 0x3e1

    .line 1781
    .line 1782
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1783
    .line 1784
    .line 1785
    move-result-object v1

    .line 1786
    const-string v2, "RIGHT_STICK:LEFT"

    .line 1787
    .line 1788
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1789
    .line 1790
    .line 1791
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 1792
    .line 1793
    const/16 v1, 0x3e2

    .line 1794
    .line 1795
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1796
    .line 1797
    .line 1798
    move-result-object v1

    .line 1799
    const-string v2, "RIGHT_STICK:RIGHT"

    .line 1800
    .line 1801
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    .line 1803
    .line 1804
    new-instance v0, Ljava/util/HashSet;

    .line 1805
    .line 1806
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1807
    .line 1808
    .line 1809
    sput-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 1810
    .line 1811
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getCurrentPressedButtonsMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p0, ""

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_1

    .line 28
    .line 29
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    :cond_1
    const/4 p0, 0x2

    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    const-string v3, "|"

    .line 49
    .line 50
    if-eqz p0, :cond_3

    .line 51
    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-nez p0, :cond_3

    .line 57
    .line 58
    if-nez v2, :cond_2

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    move v4, v2

    .line 68
    :goto_0
    const/4 p0, 0x4

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    if-eqz p0, :cond_5

    .line 78
    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p0

    .line 83
    if-nez p0, :cond_5

    .line 84
    .line 85
    if-nez v4, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    sget-object p1, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v1, "getCurrentPressedButtonsMapping, actionMouseButtons: "

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, ", mapping: "

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p2

    .line 124
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object p0
.end method

.method private static getCurrentReleaseButtonsMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    const/4 v4, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    and-int/lit8 v3, p3, 0x1

    .line 21
    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :cond_0
    const/4 p0, 0x2

    .line 35
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    const-string v3, "|"

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    and-int/lit8 p0, p3, 0x2

    .line 48
    .line 49
    if-nez p0, :cond_2

    .line 50
    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-nez p0, :cond_2

    .line 56
    .line 57
    if-nez v2, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    move v4, v2

    .line 67
    :goto_0
    const/4 p0, 0x4

    .line 68
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-eqz p0, :cond_4

    .line 77
    .line 78
    and-int/lit8 p0, p3, 0x4

    .line 79
    .line 80
    if-nez p0, :cond_4

    .line 81
    .line 82
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result p0

    .line 86
    if-nez p0, :cond_4

    .line 87
    .line 88
    if-nez v4, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    sget-object p1, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string v0, "getCurrentReleaseButtonsMapping, actionMouseButtons: "

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v0, ", buttonState: "

    .line 116
    .line 117
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p3, ", release mapping: "

    .line 124
    .line 125
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    return-object p0
.end method

.method public static getKeyCode(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->sendEventCodeMaps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, -0x1

    .line 17
    :goto_0
    return p0
.end method

.method public static getKeyName(I)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string p0, ""

    .line 17
    .line 18
    :goto_0
    return-object p0
.end method

.method public static getMappingButtonName(Landroid/view/KeyEvent;Lcom/haima/hmcp/beans/JoyStickMappingConfig;)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-static {p0}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getKeyName(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByKeyboard(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "getMappingButtonName, mappingButtonName: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v2, " keyName:"

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_1
    :goto_0
    const-string p0, ""

    .line 50
    .line 51
    return-object p0
.end method

.method public static getMouseMappingButtonName(Landroid/view/MotionEvent;Lcom/haima/hmcp/beans/JoyStickMappingConfig;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    if-eqz p0, :cond_b

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    sget-object v2, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v4, "getMouseMappingButtonName action:"

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v4, ", buttonState:"

    .line 33
    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v2, "left"

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByMouse(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const-string v3, "right"

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByMouse(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v4, "middle"

    .line 60
    .line 61
    invoke-virtual {p1, v4}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->findJoystickControlByMouse(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object v4, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v5, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v6, "getMouseMappingButtonName: leftMapping:"

    .line 73
    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v6, ", rightMapping:"

    .line 81
    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v6, ", middleMapping:"

    .line 89
    .line 90
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const/4 v4, 0x4

    .line 104
    const/4 v5, 0x2

    .line 105
    const/4 v6, 0x1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    const/16 v7, 0xb

    .line 109
    .line 110
    if-ne v1, v7, :cond_1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_1
    if-eq v1, v6, :cond_3

    .line 114
    .line 115
    const/16 v7, 0xc

    .line 116
    .line 117
    if-ne v1, v7, :cond_2

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    sget-object p0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    const-string p1, "getMouseMappingButtonName, mappingButtonName: (empty)"

    .line 123
    .line 124
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    return-object v0

    .line 128
    :cond_3
    :goto_0
    invoke-static {v2, v3, p1, p0}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getCurrentReleaseButtonsMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    and-int/lit8 v0, p0, 0x1

    .line 133
    .line 134
    if-nez v0, :cond_4

    .line 135
    .line 136
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 137
    .line 138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    const-string v1, "getMouseMappingButtonName: removed BUTTON_PRIMARY"

    .line 148
    .line 149
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_4
    and-int/lit8 v0, p0, 0x2

    .line 153
    .line 154
    if-nez v0, :cond_5

    .line 155
    .line 156
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 157
    .line 158
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 166
    .line 167
    const-string v1, "getMouseMappingButtonName: removed BUTTON_SECONDARY"

    .line 168
    .line 169
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_5
    and-int/2addr p0, v4

    .line 173
    if-nez p0, :cond_6

    .line 174
    .line 175
    sget-object p0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 176
    .line 177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    sget-object p0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 185
    .line 186
    const-string v0, "getMouseMappingButtonName: removed BUTTON_TERTIARY"

    .line 187
    .line 188
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    :cond_6
    return-object p1

    .line 192
    :cond_7
    :goto_1
    and-int/lit8 v0, p0, 0x1

    .line 193
    .line 194
    if-eqz v0, :cond_8

    .line 195
    .line 196
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 197
    .line 198
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 206
    .line 207
    const-string v1, "getMouseMappingButtonName: added BUTTON_PRIMARY"

    .line 208
    .line 209
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_8
    and-int/lit8 v0, p0, 0x2

    .line 213
    .line 214
    if-eqz v0, :cond_9

    .line 215
    .line 216
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 217
    .line 218
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 226
    .line 227
    const-string v1, "getMouseMappingButtonName: added BUTTON_SECONDARY"

    .line 228
    .line 229
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    :cond_9
    and-int/2addr p0, v4

    .line 233
    if-eqz p0, :cond_a

    .line 234
    .line 235
    sget-object p0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->actionMouseButtons:Ljava/util/Set;

    .line 236
    .line 237
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    sget-object p0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->TAG:Ljava/lang/String;

    .line 245
    .line 246
    const-string v0, "getMouseMappingButtonName: added BUTTON_TERTIARY"

    .line 247
    .line 248
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :cond_a
    invoke-static {v2, v3, p1}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getCurrentPressedButtonsMapping(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p0

    .line 255
    return-object p0

    .line 256
    :cond_b
    :goto_2
    return-object v0
.end method

.method public static isKeyMapped(I)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->keyCodeNameMaps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static restoreSettingsState()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isTouchesMoveMapperRockerEnable:Z

    .line 6
    .line 7
    return-void
.end method
