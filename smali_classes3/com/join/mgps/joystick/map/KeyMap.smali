.class public Lcom/join/mgps/joystick/map/KeyMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/joystick/map/KeyMap$EmuMap;
    }
.end annotation


# static fields
.field public static final MAX_FILE_NUM:I = 0x4

.field public static final dcDefKeysValue:[Ljava/lang/String;

.field public static final dcKeyMapSection:Ljava/lang/String; = "DC_KEY_MAP"

.field public static final dcKeysKey:[Ljava/lang/String;

.field public static final defJoystickKeys:[I

.field public static final defKeyboardKeys:[I

.field public static final emuDefKeysValue:[Ljava/lang/String;

.field public static final emuKeyMapSection:Ljava/lang/String; = "EMU_KEY_MAP"

.field public static final emuKeysKey:[Ljava/lang/String;

.field public static final fbaDefKeysValue:[Ljava/lang/String;

.field public static final fbaKeyMapSection:Ljava/lang/String; = "FBA_KEY_MAP"

.field public static final fbaKeysKey:[Ljava/lang/String;

.field public static final fcDefKeysValue:[Ljava/lang/String;

.field public static final fcKeyMapSection:Ljava/lang/String; = "FC_KEY_MAP"

.field public static final fcKeysKey:[Ljava/lang/String;

.field public static final gbaDefKeysValue:[Ljava/lang/String;

.field public static final gbaKeyMapSection:Ljava/lang/String; = "GBA_KEY_MAP"

.field public static final gbaKeysKey:[Ljava/lang/String;

.field public static final gbcDefKeysValue:[Ljava/lang/String;

.field public static final gbcKeyMapSection:Ljava/lang/String; = "GBC_KEY_MAP"

.field public static final gbcKeysKey:[Ljava/lang/String;

.field public static final inifiles:[Ljava/lang/String;

.field public static final keySection:Ljava/lang/String; = "KEY"

.field public static final keysKey:[Ljava/lang/String;

.field public static final mdDefKeysValue:[Ljava/lang/String;

.field public static final mdKeyMapSection:Ljava/lang/String; = "MD_KEY_MAP"

.field public static final mdKeysKey:[Ljava/lang/String;

.field public static final n64DefKeysValue:[Ljava/lang/String;

.field public static final n64KeyMapSection:Ljava/lang/String; = "N64_KEY_MAP"

.field public static final n64KeysKey:[Ljava/lang/String;

.field public static final psDefKeysValue:[Ljava/lang/String;

.field public static final psKeyMapSection:Ljava/lang/String; = "PS_KEY_MAP"

.field public static final psKeysKey:[Ljava/lang/String;

.field public static final pspDefKeysValue:[Ljava/lang/String;

.field public static final pspKeyMapSection:Ljava/lang/String; = "PSP_KEY_MAP"

.field public static final pspKeysKey:[Ljava/lang/String;

.field public static final sections:[Ljava/lang/String;

.field public static final sfcDefKeysValue:[Ljava/lang/String;

.field public static final sfcKeyMapSection:Ljava/lang/String; = "SFC_KEY_MAP"

.field public static final sfcKeysKey:[Ljava/lang/String;

.field public static final wscDefKeysValue:[Ljava/lang/String;

.field public static final wscKeyMapSection:Ljava/lang/String; = "WSC_KEY_MAP"

.field public static final wscKeysKey:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 31

    .line 1
    const-string v0, "key_map.ini"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    filled-new-array {v0, v1, v1, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->inifiles:[Ljava/lang/String;

    .line 10
    .line 11
    const/16 v0, 0x10

    .line 12
    .line 13
    new-array v2, v0, [I

    .line 14
    .line 15
    fill-array-data v2, :array_0

    .line 16
    .line 17
    .line 18
    sput-object v2, Lcom/join/mgps/joystick/map/KeyMap;->defJoystickKeys:[I

    .line 19
    .line 20
    new-array v0, v0, [I

    .line 21
    .line 22
    fill-array-data v0, :array_1

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->defKeyboardKeys:[I

    .line 26
    .line 27
    const-string v2, "KEY_SELECT"

    .line 28
    .line 29
    const-string v3, "KEY_START"

    .line 30
    .line 31
    const-string v4, "KEY_X"

    .line 32
    .line 33
    const-string v5, "KEY_A"

    .line 34
    .line 35
    const-string v6, "KEY_Y"

    .line 36
    .line 37
    const-string v7, "KEY_B"

    .line 38
    .line 39
    const-string v8, "KEY_L1"

    .line 40
    .line 41
    const-string v9, "KEY_L2"

    .line 42
    .line 43
    const-string v10, "KEY_R1"

    .line 44
    .line 45
    const-string v11, "KEY_R2"

    .line 46
    .line 47
    const-string v12, "KEY_DPAD_LEFT"

    .line 48
    .line 49
    const-string v13, "KEY_DPAD_UP"

    .line 50
    .line 51
    const-string v14, "KEY_DPAD_RIGHT"

    .line 52
    .line 53
    const-string v15, "KEY_DPAD_DOWN"

    .line 54
    .line 55
    const-string v16, "KEY_BUTTON_THUMBL"

    .line 56
    .line 57
    const-string v17, "KEY_BUTTON_THUMBR"

    .line 58
    .line 59
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->keysKey:[Ljava/lang/String;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_SELECT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 71
    .line 72
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    sget-object v3, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_START:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    sget-object v15, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_A:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 113
    .line 114
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    sget-object v16, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_B:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 134
    .line 135
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v7

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    sget-object v17, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_C:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 155
    .line 156
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v8

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    sget-object v18, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_D:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 176
    .line 177
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 178
    .line 179
    .line 180
    move-result v9

    .line 181
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    sget-object v19, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_E:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 197
    .line 198
    invoke-virtual/range {v19 .. v19}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v10

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    sget-object v20, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_F:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 218
    .line 219
    invoke-virtual/range {v20 .. v20}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 220
    .line 221
    .line 222
    move-result v11

    .line 223
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v11

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    .line 234
    .line 235
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 243
    .line 244
    .line 245
    move-result v13

    .line 246
    or-int/2addr v12, v13

    .line 247
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v12

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 263
    .line 264
    .line 265
    move-result v13

    .line 266
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 267
    .line 268
    .line 269
    move-result v14

    .line 270
    or-int/2addr v13, v14

    .line 271
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v13

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 287
    .line 288
    .line 289
    move-result v14

    .line 290
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 291
    .line 292
    .line 293
    move-result v21

    .line 294
    or-int v14, v14, v21

    .line 295
    .line 296
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 297
    .line 298
    .line 299
    move-result v21

    .line 300
    or-int v14, v14, v21

    .line 301
    .line 302
    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v14

    .line 312
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fbaKeysKey:[Ljava/lang/String;

    .line 317
    .line 318
    const-string v4, "KEY_SELECT"

    .line 319
    .line 320
    const-string v5, "KEY_START"

    .line 321
    .line 322
    const-string v6, "KEY_X"

    .line 323
    .line 324
    const-string v7, "KEY_A"

    .line 325
    .line 326
    const-string v8, "KEY_Y"

    .line 327
    .line 328
    const-string v9, "KEY_B"

    .line 329
    .line 330
    const-string v10, "KEY_L1"

    .line 331
    .line 332
    const-string v11, "KEY_L2"

    .line 333
    .line 334
    const-string v12, "KEY_R1"

    .line 335
    .line 336
    const-string v13, "KEY_R2"

    .line 337
    .line 338
    const-string v14, "KEY_BUTTON_THUMBR"

    .line 339
    .line 340
    filled-new-array/range {v4 .. v14}, [Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fbaDefKeysValue:[Ljava/lang/String;

    .line 345
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 352
    .line 353
    .line 354
    move-result v4

    .line 355
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v5

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v6

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 390
    .line 391
    .line 392
    move-result v4

    .line 393
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v7

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 409
    .line 410
    .line 411
    move-result v4

    .line 412
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v8

    .line 422
    new-instance v0, Ljava/lang/StringBuilder;

    .line 423
    .line 424
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 425
    .line 426
    .line 427
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v9

    .line 441
    new-instance v0, Ljava/lang/StringBuilder;

    .line 442
    .line 443
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 447
    .line 448
    .line 449
    move-result v4

    .line 450
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    .line 461
    .line 462
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 466
    .line 467
    .line 468
    move-result v4

    .line 469
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 470
    .line 471
    .line 472
    move-result v11

    .line 473
    or-int/2addr v4, v11

    .line 474
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fcKeysKey:[Ljava/lang/String;

    .line 489
    .line 490
    const-string v4, "KEY_SELECT"

    .line 491
    .line 492
    const-string v5, "KEY_START"

    .line 493
    .line 494
    const-string v6, "KEY_A"

    .line 495
    .line 496
    const-string v7, "KEY_B"

    .line 497
    .line 498
    const-string v8, "KEY_X"

    .line 499
    .line 500
    const-string v9, "KEY_Y"

    .line 501
    .line 502
    const-string v10, "KEY_R1"

    .line 503
    .line 504
    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->fcDefKeysValue:[Ljava/lang/String;

    .line 509
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v5

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    .line 530
    .line 531
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 535
    .line 536
    .line 537
    move-result v4

    .line 538
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v6

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 554
    .line 555
    .line 556
    move-result v4

    .line 557
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 564
    .line 565
    .line 566
    move-result-object v7

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 573
    .line 574
    .line 575
    move-result v4

    .line 576
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v8

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    .line 587
    .line 588
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    .line 590
    .line 591
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 592
    .line 593
    .line 594
    move-result v4

    .line 595
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 596
    .line 597
    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    .line 600
    .line 601
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 602
    .line 603
    .line 604
    move-result-object v9

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 611
    .line 612
    .line 613
    move-result v4

    .line 614
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 615
    .line 616
    .line 617
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v10

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    sget-object v4, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_L1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 630
    .line 631
    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 632
    .line 633
    .line 634
    move-result v11

    .line 635
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v11

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    .line 646
    .line 647
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 648
    .line 649
    .line 650
    sget-object v13, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_R1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 651
    .line 652
    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 653
    .line 654
    .line 655
    move-result v12

    .line 656
    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v12

    .line 666
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->sfcKeysKey:[Ljava/lang/String;

    .line 671
    .line 672
    const-string v5, "KEY_SELECT"

    .line 673
    .line 674
    const-string v6, "KEY_START"

    .line 675
    .line 676
    const-string v7, "KEY_X"

    .line 677
    .line 678
    const-string v8, "KEY_A"

    .line 679
    .line 680
    const-string v9, "KEY_Y"

    .line 681
    .line 682
    const-string v10, "KEY_B"

    .line 683
    .line 684
    const-string v11, "KEY_L1"

    .line 685
    .line 686
    const-string v12, "KEY_R1"

    .line 687
    .line 688
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v0

    .line 692
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->sfcDefKeysValue:[Ljava/lang/String;

    .line 693
    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    .line 695
    .line 696
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    .line 698
    .line 699
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 700
    .line 701
    .line 702
    move-result v5

    .line 703
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 704
    .line 705
    .line 706
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    .line 708
    .line 709
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 710
    .line 711
    .line 712
    move-result-object v21

    .line 713
    new-instance v0, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 719
    .line 720
    .line 721
    move-result v5

    .line 722
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v22

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    .line 733
    .line 734
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .line 736
    .line 737
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 738
    .line 739
    .line 740
    move-result v5

    .line 741
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 742
    .line 743
    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 748
    .line 749
    .line 750
    move-result-object v23

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 757
    .line 758
    .line 759
    move-result v5

    .line 760
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 767
    .line 768
    .line 769
    move-result-object v24

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    .line 771
    .line 772
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 773
    .line 774
    .line 775
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 776
    .line 777
    .line 778
    move-result v5

    .line 779
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 780
    .line 781
    .line 782
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    .line 784
    .line 785
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v25

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    .line 790
    .line 791
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 792
    .line 793
    .line 794
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 795
    .line 796
    .line 797
    move-result v5

    .line 798
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 805
    .line 806
    .line 807
    move-result-object v26

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    .line 809
    .line 810
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .line 812
    .line 813
    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v27

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    .line 828
    .line 829
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 833
    .line 834
    .line 835
    move-result v5

    .line 836
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    .line 841
    .line 842
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 843
    .line 844
    .line 845
    move-result-object v28

    .line 846
    filled-new-array/range {v21 .. v28}, [Ljava/lang/String;

    .line 847
    .line 848
    .line 849
    move-result-object v0

    .line 850
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->pspKeysKey:[Ljava/lang/String;

    .line 851
    .line 852
    const-string v5, "KEY_SELECT"

    .line 853
    .line 854
    const-string v6, "KEY_START"

    .line 855
    .line 856
    const-string v7, "KEY_X"

    .line 857
    .line 858
    const-string v8, "KEY_A"

    .line 859
    .line 860
    const-string v9, "KEY_Y"

    .line 861
    .line 862
    const-string v10, "KEY_B"

    .line 863
    .line 864
    const-string v11, "KEY_L1"

    .line 865
    .line 866
    const-string v12, "KEY_R1"

    .line 867
    .line 868
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->pspDefKeysValue:[Ljava/lang/String;

    .line 873
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    .line 875
    .line 876
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 880
    .line 881
    .line 882
    move-result v5

    .line 883
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v21

    .line 893
    new-instance v0, Ljava/lang/StringBuilder;

    .line 894
    .line 895
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .line 897
    .line 898
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 899
    .line 900
    .line 901
    move-result v5

    .line 902
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    .line 907
    .line 908
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 909
    .line 910
    .line 911
    move-result-object v22

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    .line 913
    .line 914
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 915
    .line 916
    .line 917
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 918
    .line 919
    .line 920
    move-result v5

    .line 921
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 922
    .line 923
    .line 924
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 925
    .line 926
    .line 927
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v23

    .line 931
    new-instance v0, Ljava/lang/StringBuilder;

    .line 932
    .line 933
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 934
    .line 935
    .line 936
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 937
    .line 938
    .line 939
    move-result v5

    .line 940
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 941
    .line 942
    .line 943
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    .line 945
    .line 946
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 947
    .line 948
    .line 949
    move-result-object v24

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    .line 951
    .line 952
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 953
    .line 954
    .line 955
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 956
    .line 957
    .line 958
    move-result v5

    .line 959
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 960
    .line 961
    .line 962
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 963
    .line 964
    .line 965
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 966
    .line 967
    .line 968
    move-result-object v25

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    .line 970
    .line 971
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 972
    .line 973
    .line 974
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 975
    .line 976
    .line 977
    move-result v5

    .line 978
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 979
    .line 980
    .line 981
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    .line 983
    .line 984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 985
    .line 986
    .line 987
    move-result-object v26

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    .line 989
    .line 990
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 991
    .line 992
    .line 993
    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 994
    .line 995
    .line 996
    move-result v5

    .line 997
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v27

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1008
    .line 1009
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1013
    .line 1014
    .line 1015
    move-result v5

    .line 1016
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1017
    .line 1018
    .line 1019
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1020
    .line 1021
    .line 1022
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1023
    .line 1024
    .line 1025
    move-result-object v28

    .line 1026
    filled-new-array/range {v21 .. v28}, [Ljava/lang/String;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v0

    .line 1030
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->gbaKeysKey:[Ljava/lang/String;

    .line 1031
    .line 1032
    const-string v5, "KEY_SELECT"

    .line 1033
    .line 1034
    const-string v6, "KEY_START"

    .line 1035
    .line 1036
    const-string v7, "KEY_B"

    .line 1037
    .line 1038
    const-string v8, "KEY_X"

    .line 1039
    .line 1040
    const-string v9, "KEY_Y"

    .line 1041
    .line 1042
    const-string v10, "KEY_A"

    .line 1043
    .line 1044
    const-string v11, "KEY_R1"

    .line 1045
    .line 1046
    const-string v12, "KEY_L1"

    .line 1047
    .line 1048
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v0

    .line 1052
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->gbaDefKeysValue:[Ljava/lang/String;

    .line 1053
    .line 1054
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1055
    .line 1056
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1057
    .line 1058
    .line 1059
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1060
    .line 1061
    .line 1062
    move-result v5

    .line 1063
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1064
    .line 1065
    .line 1066
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    .line 1069
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v21

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1076
    .line 1077
    .line 1078
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1079
    .line 1080
    .line 1081
    move-result v5

    .line 1082
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    .line 1087
    .line 1088
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v22

    .line 1092
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1093
    .line 1094
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1095
    .line 1096
    .line 1097
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1098
    .line 1099
    .line 1100
    move-result v5

    .line 1101
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v23

    .line 1111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1112
    .line 1113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1114
    .line 1115
    .line 1116
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1117
    .line 1118
    .line 1119
    move-result v5

    .line 1120
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1127
    .line 1128
    .line 1129
    move-result-object v24

    .line 1130
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1131
    .line 1132
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1133
    .line 1134
    .line 1135
    invoke-virtual/range {v19 .. v19}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1136
    .line 1137
    .line 1138
    move-result v5

    .line 1139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1140
    .line 1141
    .line 1142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v25

    .line 1149
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1150
    .line 1151
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1152
    .line 1153
    .line 1154
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1155
    .line 1156
    .line 1157
    move-result v5

    .line 1158
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1159
    .line 1160
    .line 1161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    .line 1163
    .line 1164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v26

    .line 1168
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1169
    .line 1170
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1171
    .line 1172
    .line 1173
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1174
    .line 1175
    .line 1176
    move-result v5

    .line 1177
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1178
    .line 1179
    .line 1180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    .line 1182
    .line 1183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v27

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1190
    .line 1191
    .line 1192
    invoke-virtual/range {v20 .. v20}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1193
    .line 1194
    .line 1195
    move-result v5

    .line 1196
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    move-result-object v28

    .line 1206
    filled-new-array/range {v21 .. v28}, [Ljava/lang/String;

    .line 1207
    .line 1208
    .line 1209
    move-result-object v0

    .line 1210
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->mdKeysKey:[Ljava/lang/String;

    .line 1211
    .line 1212
    const-string v5, "KEY_SELECT"

    .line 1213
    .line 1214
    const-string v6, "KEY_START"

    .line 1215
    .line 1216
    const-string v7, "KEY_X"

    .line 1217
    .line 1218
    const-string v8, "KEY_B"

    .line 1219
    .line 1220
    const-string v9, "KEY_Y"

    .line 1221
    .line 1222
    const-string v10, "KEY_A"

    .line 1223
    .line 1224
    const-string v11, "KEY_R1"

    .line 1225
    .line 1226
    const-string v12, "KEY_L1"

    .line 1227
    .line 1228
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 1229
    .line 1230
    .line 1231
    move-result-object v0

    .line 1232
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->mdDefKeysValue:[Ljava/lang/String;

    .line 1233
    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1235
    .line 1236
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1237
    .line 1238
    .line 1239
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1240
    .line 1241
    .line 1242
    move-result v5

    .line 1243
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1244
    .line 1245
    .line 1246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    .line 1248
    .line 1249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v19

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1254
    .line 1255
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1256
    .line 1257
    .line 1258
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1259
    .line 1260
    .line 1261
    move-result v5

    .line 1262
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1269
    .line 1270
    .line 1271
    move-result-object v20

    .line 1272
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1275
    .line 1276
    .line 1277
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1278
    .line 1279
    .line 1280
    move-result v5

    .line 1281
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1282
    .line 1283
    .line 1284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1285
    .line 1286
    .line 1287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1288
    .line 1289
    .line 1290
    move-result-object v21

    .line 1291
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1292
    .line 1293
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1297
    .line 1298
    .line 1299
    move-result v5

    .line 1300
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v22

    .line 1310
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1311
    .line 1312
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1313
    .line 1314
    .line 1315
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1316
    .line 1317
    .line 1318
    move-result v5

    .line 1319
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1320
    .line 1321
    .line 1322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    .line 1325
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v23

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1330
    .line 1331
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1332
    .line 1333
    .line 1334
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1335
    .line 1336
    .line 1337
    move-result v5

    .line 1338
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1339
    .line 1340
    .line 1341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1342
    .line 1343
    .line 1344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1345
    .line 1346
    .line 1347
    move-result-object v24

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1349
    .line 1350
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1351
    .line 1352
    .line 1353
    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1354
    .line 1355
    .line 1356
    move-result v5

    .line 1357
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1358
    .line 1359
    .line 1360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1364
    .line 1365
    .line 1366
    move-result-object v25

    .line 1367
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1368
    .line 1369
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1370
    .line 1371
    .line 1372
    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1373
    .line 1374
    .line 1375
    move-result v5

    .line 1376
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1377
    .line 1378
    .line 1379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    .line 1382
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1383
    .line 1384
    .line 1385
    move-result-object v26

    .line 1386
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1389
    .line 1390
    .line 1391
    sget-object v5, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_L2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1392
    .line 1393
    invoke-virtual {v5}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1394
    .line 1395
    .line 1396
    move-result v6

    .line 1397
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1398
    .line 1399
    .line 1400
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1401
    .line 1402
    .line 1403
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1404
    .line 1405
    .line 1406
    move-result-object v27

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1408
    .line 1409
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1410
    .line 1411
    .line 1412
    sget-object v6, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_R2:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1413
    .line 1414
    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1415
    .line 1416
    .line 1417
    move-result v7

    .line 1418
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1419
    .line 1420
    .line 1421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1422
    .line 1423
    .line 1424
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1425
    .line 1426
    .line 1427
    move-result-object v28

    .line 1428
    filled-new-array/range {v19 .. v28}, [Ljava/lang/String;

    .line 1429
    .line 1430
    .line 1431
    move-result-object v0

    .line 1432
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->psKeysKey:[Ljava/lang/String;

    .line 1433
    .line 1434
    const-string v19, "KEY_SELECT"

    .line 1435
    .line 1436
    const-string v20, "KEY_START"

    .line 1437
    .line 1438
    const-string v21, "KEY_X"

    .line 1439
    .line 1440
    const-string v22, "KEY_A"

    .line 1441
    .line 1442
    const-string v23, "KEY_Y"

    .line 1443
    .line 1444
    const-string v24, "KEY_B"

    .line 1445
    .line 1446
    const-string v25, "KEY_L1"

    .line 1447
    .line 1448
    const-string v26, "KEY_R1"

    .line 1449
    .line 1450
    const-string v27, "KEY_L2"

    .line 1451
    .line 1452
    const-string v28, "KEY_R2"

    .line 1453
    .line 1454
    filled-new-array/range {v19 .. v28}, [Ljava/lang/String;

    .line 1455
    .line 1456
    .line 1457
    move-result-object v0

    .line 1458
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->psDefKeysValue:[Ljava/lang/String;

    .line 1459
    .line 1460
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1461
    .line 1462
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1463
    .line 1464
    .line 1465
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1466
    .line 1467
    .line 1468
    move-result v7

    .line 1469
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1470
    .line 1471
    .line 1472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    .line 1475
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1476
    .line 1477
    .line 1478
    move-result-object v19

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1482
    .line 1483
    .line 1484
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1485
    .line 1486
    .line 1487
    move-result v7

    .line 1488
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1489
    .line 1490
    .line 1491
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1492
    .line 1493
    .line 1494
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1495
    .line 1496
    .line 1497
    move-result-object v20

    .line 1498
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1499
    .line 1500
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1504
    .line 1505
    .line 1506
    move-result v7

    .line 1507
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1508
    .line 1509
    .line 1510
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1511
    .line 1512
    .line 1513
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1514
    .line 1515
    .line 1516
    move-result-object v21

    .line 1517
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1518
    .line 1519
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1523
    .line 1524
    .line 1525
    move-result v7

    .line 1526
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1527
    .line 1528
    .line 1529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1530
    .line 1531
    .line 1532
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1533
    .line 1534
    .line 1535
    move-result-object v22

    .line 1536
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1537
    .line 1538
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1539
    .line 1540
    .line 1541
    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1542
    .line 1543
    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1544
    .line 1545
    .line 1546
    move-result v7

    .line 1547
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1548
    .line 1549
    .line 1550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1554
    .line 1555
    .line 1556
    move-result-object v23

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1558
    .line 1559
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1560
    .line 1561
    .line 1562
    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1563
    .line 1564
    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1565
    .line 1566
    .line 1567
    move-result v7

    .line 1568
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1569
    .line 1570
    .line 1571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    .line 1573
    .line 1574
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v24

    .line 1578
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1579
    .line 1580
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1581
    .line 1582
    .line 1583
    sget-object v7, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1584
    .line 1585
    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1586
    .line 1587
    .line 1588
    move-result v8

    .line 1589
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1590
    .line 1591
    .line 1592
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1593
    .line 1594
    .line 1595
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v25

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1600
    .line 1601
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1602
    .line 1603
    .line 1604
    sget-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN1:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1605
    .line 1606
    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1607
    .line 1608
    .line 1609
    move-result v8

    .line 1610
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1611
    .line 1612
    .line 1613
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1614
    .line 1615
    .line 1616
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1617
    .line 1618
    .line 1619
    move-result-object v26

    .line 1620
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1621
    .line 1622
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1623
    .line 1624
    .line 1625
    sget-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_LEFT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1626
    .line 1627
    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1628
    .line 1629
    .line 1630
    move-result v8

    .line 1631
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1632
    .line 1633
    .line 1634
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1635
    .line 1636
    .line 1637
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1638
    .line 1639
    .line 1640
    move-result-object v27

    .line 1641
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1642
    .line 1643
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1644
    .line 1645
    .line 1646
    sget-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_UP:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1647
    .line 1648
    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1649
    .line 1650
    .line 1651
    move-result v8

    .line 1652
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1653
    .line 1654
    .line 1655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    .line 1657
    .line 1658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v28

    .line 1662
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1663
    .line 1664
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1665
    .line 1666
    .line 1667
    sget-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_RIGHT:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1668
    .line 1669
    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1670
    .line 1671
    .line 1672
    move-result v8

    .line 1673
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1674
    .line 1675
    .line 1676
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1677
    .line 1678
    .line 1679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1680
    .line 1681
    .line 1682
    move-result-object v29

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1684
    .line 1685
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1686
    .line 1687
    .line 1688
    sget-object v8, Lcom/join/mgps/joystick/map/KeyCodes;->KEY_DOWN:Lcom/join/mgps/joystick/map/KeyCodes;

    .line 1689
    .line 1690
    invoke-virtual {v8}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1691
    .line 1692
    .line 1693
    move-result v8

    .line 1694
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v30

    .line 1704
    filled-new-array/range {v19 .. v30}, [Ljava/lang/String;

    .line 1705
    .line 1706
    .line 1707
    move-result-object v0

    .line 1708
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->wscKeysKey:[Ljava/lang/String;

    .line 1709
    .line 1710
    const-string v19, "KEY_SELECT"

    .line 1711
    .line 1712
    const-string v20, "KEY_START"

    .line 1713
    .line 1714
    const-string v21, "KEY_A"

    .line 1715
    .line 1716
    const-string v22, "KEY_B"

    .line 1717
    .line 1718
    const-string v23, "KEY_L1"

    .line 1719
    .line 1720
    const-string v24, "KEY_R1"

    .line 1721
    .line 1722
    const-string v25, "KEY_L2"

    .line 1723
    .line 1724
    const-string v26, "KEY_R2"

    .line 1725
    .line 1726
    const-string v27, "KEY_DPAD_LEFT"

    .line 1727
    .line 1728
    const-string v28, "KEY_DPAD_UP"

    .line 1729
    .line 1730
    const-string v29, "KEY_DPAD_RIGHT"

    .line 1731
    .line 1732
    const-string v30, "KEY_DPAD_DOWN"

    .line 1733
    .line 1734
    filled-new-array/range {v19 .. v30}, [Ljava/lang/String;

    .line 1735
    .line 1736
    .line 1737
    move-result-object v0

    .line 1738
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->wscDefKeysValue:[Ljava/lang/String;

    .line 1739
    .line 1740
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1741
    .line 1742
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1743
    .line 1744
    .line 1745
    invoke-virtual {v2}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1746
    .line 1747
    .line 1748
    move-result v2

    .line 1749
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1750
    .line 1751
    .line 1752
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    .line 1754
    .line 1755
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1756
    .line 1757
    .line 1758
    move-result-object v19

    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1760
    .line 1761
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1762
    .line 1763
    .line 1764
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1765
    .line 1766
    .line 1767
    move-result v2

    .line 1768
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1769
    .line 1770
    .line 1771
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1772
    .line 1773
    .line 1774
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1775
    .line 1776
    .line 1777
    move-result-object v20

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1779
    .line 1780
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    .line 1782
    .line 1783
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1784
    .line 1785
    .line 1786
    move-result v2

    .line 1787
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1788
    .line 1789
    .line 1790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1791
    .line 1792
    .line 1793
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1794
    .line 1795
    .line 1796
    move-result-object v21

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1798
    .line 1799
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1800
    .line 1801
    .line 1802
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1803
    .line 1804
    .line 1805
    move-result v2

    .line 1806
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1807
    .line 1808
    .line 1809
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1810
    .line 1811
    .line 1812
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v22

    .line 1816
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1817
    .line 1818
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1819
    .line 1820
    .line 1821
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1822
    .line 1823
    .line 1824
    move-result v2

    .line 1825
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1826
    .line 1827
    .line 1828
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1829
    .line 1830
    .line 1831
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1832
    .line 1833
    .line 1834
    move-result-object v23

    .line 1835
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1836
    .line 1837
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1838
    .line 1839
    .line 1840
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1841
    .line 1842
    .line 1843
    move-result v2

    .line 1844
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1845
    .line 1846
    .line 1847
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1848
    .line 1849
    .line 1850
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1851
    .line 1852
    .line 1853
    move-result-object v24

    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1855
    .line 1856
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1857
    .line 1858
    .line 1859
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1860
    .line 1861
    .line 1862
    move-result v2

    .line 1863
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1864
    .line 1865
    .line 1866
    move-result v8

    .line 1867
    or-int/2addr v2, v8

    .line 1868
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1869
    .line 1870
    .line 1871
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    .line 1873
    .line 1874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1875
    .line 1876
    .line 1877
    move-result-object v25

    .line 1878
    filled-new-array/range {v19 .. v25}, [Ljava/lang/String;

    .line 1879
    .line 1880
    .line 1881
    move-result-object v0

    .line 1882
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->gbcKeysKey:[Ljava/lang/String;

    .line 1883
    .line 1884
    const-string v19, "KEY_SELECT"

    .line 1885
    .line 1886
    const-string v20, "KEY_START"

    .line 1887
    .line 1888
    const-string v21, "KEY_A"

    .line 1889
    .line 1890
    const-string v22, "KEY_B"

    .line 1891
    .line 1892
    const-string v23, "KEY_X"

    .line 1893
    .line 1894
    const-string v24, "KEY_Y"

    .line 1895
    .line 1896
    const-string v25, "KEY_R1"

    .line 1897
    .line 1898
    filled-new-array/range {v19 .. v25}, [Ljava/lang/String;

    .line 1899
    .line 1900
    .line 1901
    move-result-object v0

    .line 1902
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->gbcDefKeysValue:[Ljava/lang/String;

    .line 1903
    .line 1904
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1905
    .line 1906
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1907
    .line 1908
    .line 1909
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1910
    .line 1911
    .line 1912
    move-result v2

    .line 1913
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1914
    .line 1915
    .line 1916
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1917
    .line 1918
    .line 1919
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1920
    .line 1921
    .line 1922
    move-result-object v19

    .line 1923
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1924
    .line 1925
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1926
    .line 1927
    .line 1928
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1929
    .line 1930
    .line 1931
    move-result v2

    .line 1932
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1933
    .line 1934
    .line 1935
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1936
    .line 1937
    .line 1938
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1939
    .line 1940
    .line 1941
    move-result-object v20

    .line 1942
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1943
    .line 1944
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1945
    .line 1946
    .line 1947
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1948
    .line 1949
    .line 1950
    move-result v2

    .line 1951
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1952
    .line 1953
    .line 1954
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1955
    .line 1956
    .line 1957
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1958
    .line 1959
    .line 1960
    move-result-object v21

    .line 1961
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1962
    .line 1963
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1964
    .line 1965
    .line 1966
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1967
    .line 1968
    .line 1969
    move-result v2

    .line 1970
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1971
    .line 1972
    .line 1973
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1974
    .line 1975
    .line 1976
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v22

    .line 1980
    new-instance v0, Ljava/lang/StringBuilder;

    .line 1981
    .line 1982
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1983
    .line 1984
    .line 1985
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 1986
    .line 1987
    .line 1988
    move-result v2

    .line 1989
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v23

    .line 1999
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2000
    .line 2001
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2002
    .line 2003
    .line 2004
    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2005
    .line 2006
    .line 2007
    move-result v2

    .line 2008
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2009
    .line 2010
    .line 2011
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    .line 2013
    .line 2014
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2015
    .line 2016
    .line 2017
    move-result-object v24

    .line 2018
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2019
    .line 2020
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2021
    .line 2022
    .line 2023
    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2024
    .line 2025
    .line 2026
    move-result v2

    .line 2027
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2028
    .line 2029
    .line 2030
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2031
    .line 2032
    .line 2033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2034
    .line 2035
    .line 2036
    move-result-object v25

    .line 2037
    filled-new-array/range {v19 .. v25}, [Ljava/lang/String;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v0

    .line 2041
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->dcKeysKey:[Ljava/lang/String;

    .line 2042
    .line 2043
    const-string v19, "KEY_START"

    .line 2044
    .line 2045
    const-string v20, "KEY_A"

    .line 2046
    .line 2047
    const-string v21, "KEY_B"

    .line 2048
    .line 2049
    const-string v22, "KEY_X"

    .line 2050
    .line 2051
    const-string v23, "KEY_Y"

    .line 2052
    .line 2053
    const-string v24, "KEY_L1"

    .line 2054
    .line 2055
    const-string v25, "KEY_R1"

    .line 2056
    .line 2057
    filled-new-array/range {v19 .. v25}, [Ljava/lang/String;

    .line 2058
    .line 2059
    .line 2060
    move-result-object v0

    .line 2061
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->dcDefKeysValue:[Ljava/lang/String;

    .line 2062
    .line 2063
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2064
    .line 2065
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2066
    .line 2067
    .line 2068
    invoke-virtual {v3}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2069
    .line 2070
    .line 2071
    move-result v2

    .line 2072
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2073
    .line 2074
    .line 2075
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2076
    .line 2077
    .line 2078
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2079
    .line 2080
    .line 2081
    move-result-object v19

    .line 2082
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2083
    .line 2084
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2085
    .line 2086
    .line 2087
    invoke-virtual {v15}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2088
    .line 2089
    .line 2090
    move-result v2

    .line 2091
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2092
    .line 2093
    .line 2094
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    .line 2096
    .line 2097
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2098
    .line 2099
    .line 2100
    move-result-object v20

    .line 2101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2102
    .line 2103
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2104
    .line 2105
    .line 2106
    invoke-virtual/range {v16 .. v16}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2107
    .line 2108
    .line 2109
    move-result v2

    .line 2110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2111
    .line 2112
    .line 2113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2114
    .line 2115
    .line 2116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2117
    .line 2118
    .line 2119
    move-result-object v21

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2121
    .line 2122
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2123
    .line 2124
    .line 2125
    invoke-virtual/range {v17 .. v17}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2126
    .line 2127
    .line 2128
    move-result v2

    .line 2129
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2130
    .line 2131
    .line 2132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2133
    .line 2134
    .line 2135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v22

    .line 2139
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2140
    .line 2141
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2142
    .line 2143
    .line 2144
    invoke-virtual/range {v18 .. v18}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2145
    .line 2146
    .line 2147
    move-result v2

    .line 2148
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2149
    .line 2150
    .line 2151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2152
    .line 2153
    .line 2154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2155
    .line 2156
    .line 2157
    move-result-object v23

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2159
    .line 2160
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2161
    .line 2162
    .line 2163
    invoke-virtual {v4}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2164
    .line 2165
    .line 2166
    move-result v2

    .line 2167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2168
    .line 2169
    .line 2170
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2171
    .line 2172
    .line 2173
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2174
    .line 2175
    .line 2176
    move-result-object v24

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2178
    .line 2179
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2180
    .line 2181
    .line 2182
    invoke-virtual {v13}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2183
    .line 2184
    .line 2185
    move-result v2

    .line 2186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2187
    .line 2188
    .line 2189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2190
    .line 2191
    .line 2192
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2193
    .line 2194
    .line 2195
    move-result-object v25

    .line 2196
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2197
    .line 2198
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2199
    .line 2200
    .line 2201
    invoke-virtual {v5}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2202
    .line 2203
    .line 2204
    move-result v2

    .line 2205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2206
    .line 2207
    .line 2208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2209
    .line 2210
    .line 2211
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2212
    .line 2213
    .line 2214
    move-result-object v26

    .line 2215
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2216
    .line 2217
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2218
    .line 2219
    .line 2220
    invoke-virtual {v6}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2221
    .line 2222
    .line 2223
    move-result v2

    .line 2224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2225
    .line 2226
    .line 2227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    .line 2230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v27

    .line 2234
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2235
    .line 2236
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {v7}, Lcom/join/mgps/joystick/map/KeyCodes;->value()I

    .line 2240
    .line 2241
    .line 2242
    move-result v2

    .line 2243
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2244
    .line 2245
    .line 2246
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    .line 2248
    .line 2249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2250
    .line 2251
    .line 2252
    move-result-object v28

    .line 2253
    filled-new-array/range {v19 .. v28}, [Ljava/lang/String;

    .line 2254
    .line 2255
    .line 2256
    move-result-object v0

    .line 2257
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->n64KeysKey:[Ljava/lang/String;

    .line 2258
    .line 2259
    const-string v1, "KEY_START"

    .line 2260
    .line 2261
    const-string v2, "KEY_A"

    .line 2262
    .line 2263
    const-string v3, "KEY_B"

    .line 2264
    .line 2265
    const-string v4, "KEY_X"

    .line 2266
    .line 2267
    const-string v5, "KEY_Y"

    .line 2268
    .line 2269
    const-string v6, "KEY_L1"

    .line 2270
    .line 2271
    const-string v7, "KEY_R1"

    .line 2272
    .line 2273
    const-string v8, "KEY_L2"

    .line 2274
    .line 2275
    const-string v9, "KEY_R2"

    .line 2276
    .line 2277
    const-string v10, "KEY_BUTTON_THUMBL"

    .line 2278
    .line 2279
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    .line 2280
    .line 2281
    .line 2282
    move-result-object v0

    .line 2283
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->n64DefKeysValue:[Ljava/lang/String;

    .line 2284
    .line 2285
    const-string v1, "hideVirtual"

    .line 2286
    .line 2287
    const-string v2, "FBA_KEY_MAP"

    .line 2288
    .line 2289
    const-string v3, "FC_KEY_MAP"

    .line 2290
    .line 2291
    const-string v4, "SFC_KEY_MAP"

    .line 2292
    .line 2293
    const-string v5, "GBA_KEY_MAP"

    .line 2294
    .line 2295
    const-string v6, "PSP_KEY_MAP"

    .line 2296
    .line 2297
    const-string v7, "MD_KEY_MAP"

    .line 2298
    .line 2299
    const-string v8, "PS_KEY_MAP"

    .line 2300
    .line 2301
    const-string v9, "WSC_KEY_MAP"

    .line 2302
    .line 2303
    const-string v10, "GBC_KEY_MAP"

    .line 2304
    .line 2305
    const-string v11, "DC_KEY_MAP"

    .line 2306
    .line 2307
    const-string v12, "N64_KEY_MAP"

    .line 2308
    .line 2309
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 2310
    .line 2311
    .line 2312
    move-result-object v0

    .line 2313
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->emuKeysKey:[Ljava/lang/String;

    .line 2314
    .line 2315
    const-string v1, "true"

    .line 2316
    .line 2317
    const-string v2, "1"

    .line 2318
    .line 2319
    const-string v3, "1"

    .line 2320
    .line 2321
    const-string v4, "1"

    .line 2322
    .line 2323
    const-string v5, "1"

    .line 2324
    .line 2325
    const-string v6, "1"

    .line 2326
    .line 2327
    const-string v7, "1"

    .line 2328
    .line 2329
    const-string v8, "1"

    .line 2330
    .line 2331
    const-string v9, "1"

    .line 2332
    .line 2333
    const-string v10, "1"

    .line 2334
    .line 2335
    const-string v11, "1"

    .line 2336
    .line 2337
    const-string v12, "1"

    .line 2338
    .line 2339
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    .line 2340
    .line 2341
    .line 2342
    move-result-object v0

    .line 2343
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->emuDefKeysValue:[Ljava/lang/String;

    .line 2344
    .line 2345
    const-string v1, "KEY"

    .line 2346
    .line 2347
    const-string v2, "EMU_KEY_MAP"

    .line 2348
    .line 2349
    const-string v3, "FBA_KEY_MAP"

    .line 2350
    .line 2351
    const-string v4, "SFC_KEY_MAP"

    .line 2352
    .line 2353
    const-string v5, "FC_KEY_MAP"

    .line 2354
    .line 2355
    const-string v6, "GBA_KEY_MAP"

    .line 2356
    .line 2357
    const-string v7, "PSP_KEY_MAP"

    .line 2358
    .line 2359
    const-string v8, "MD_KEY_MAP"

    .line 2360
    .line 2361
    const-string v9, "PS_KEY_MAP"

    .line 2362
    .line 2363
    const-string v10, "WSC_KEY_MAP"

    .line 2364
    .line 2365
    const-string v11, "GBC_KEY_MAP"

    .line 2366
    .line 2367
    const-string v12, "DC_KEY_MAP"

    .line 2368
    .line 2369
    const-string v13, "N64_KEY_MAP"

    .line 2370
    .line 2371
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 2372
    .line 2373
    .line 2374
    move-result-object v0

    .line 2375
    sput-object v0, Lcom/join/mgps/joystick/map/KeyMap;->sections:[Ljava/lang/String;

    .line 2376
    .line 2377
    return-void

    .line 2378
    nop

    :array_0
    .array-data 4
        0x6d
        0x6c
        0x63
        0x60
        0x64
        0x61
        0x66
        0x68
        0x67
        0x69
        0x15
        0x13
        0x16
        0x14
        0x6a
        0x6b
    .end array-data

    :array_1
    .array-data 4
        0x43
        0x42
        0x8
        0x9
        0xb
        0xa
        0xc
        0xe
        0xd
        0xf
        0x1d
        0x33
        0x20
        0x2f
        0x10
        0x7
    .end array-data
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
