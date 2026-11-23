.class public Lcom/haima/hmcp/virtual/HmVirtualConstant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LETTER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMBER_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field public static final XBOX_A_VALUE:I = 0x1000

.field public static final XBOX_B_VALUE:I = 0x2000

.field public static final XBOX_DOWN_VALUE:I = 0x2

.field public static final XBOX_LB_VALUE:I = 0x100

.field public static final XBOX_LEFT_VALUE:I = 0x4

.field public static final XBOX_LS_VALUE:I = 0x40

.field public static final XBOX_LT_VALUE:I = 0x401

.field public static final XBOX_RB_VALUE:I = 0x200

.field public static final XBOX_RIGHT_VALUE:I = 0x8

.field public static final XBOX_RS_VALUE:I = 0x80

.field public static final XBOX_RT_VALUE:I = 0x402

.field public static final XBOX_SELECT_VALUE:I = 0x20

.field public static final XBOX_START_VALUE:I = 0x10

.field public static final XBOX_UP_VALUE:I = 0x1

.field public static final XBOX_X_VALUE:I = 0x4000

.field public static final XBOX_Y_VALUE:I = 0x8000


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/haima/hmcp/virtual/HmVirtualConstant;->LETTER_KEYS:Ljava/util/List;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/haima/hmcp/virtual/HmVirtualConstant;->NUMBER_KEYS:Ljava/util/List;

    .line 14
    .line 15
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 16
    .line 17
    const-string v3, "Num"

    .line 18
    .line 19
    const/16 v4, 0x90

    .line 20
    .line 21
    const/4 v5, 0x1

    .line 22
    invoke-direct {v2, v5, v5, v3, v4}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 29
    .line 30
    const/16 v3, 0x6f

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    const-string v6, "/"

    .line 34
    .line 35
    invoke-direct {v2, v5, v4, v6, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 42
    .line 43
    const-string v3, "*"

    .line 44
    .line 45
    const/16 v7, 0x6a

    .line 46
    .line 47
    const/4 v8, 0x3

    .line 48
    invoke-direct {v2, v5, v8, v3, v7}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 49
    .line 50
    .line 51
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 55
    .line 56
    const/16 v3, 0x6d

    .line 57
    .line 58
    const/4 v7, 0x4

    .line 59
    const-string v9, "-"

    .line 60
    .line 61
    invoke-direct {v2, v5, v7, v9, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 68
    .line 69
    const/16 v3, 0x67

    .line 70
    .line 71
    const-string v10, "7"

    .line 72
    .line 73
    invoke-direct {v2, v4, v5, v10, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 80
    .line 81
    const/16 v3, 0x68

    .line 82
    .line 83
    const-string v11, "8"

    .line 84
    .line 85
    invoke-direct {v2, v4, v4, v11, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 92
    .line 93
    const/16 v3, 0x69

    .line 94
    .line 95
    const-string v12, "9"

    .line 96
    .line 97
    invoke-direct {v2, v4, v8, v12, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 104
    .line 105
    const/4 v14, 0x2

    .line 106
    const/4 v15, 0x4

    .line 107
    const/16 v16, 0x2

    .line 108
    .line 109
    const/16 v17, 0x1

    .line 110
    .line 111
    const-string v18, "+"

    .line 112
    .line 113
    const/16 v19, 0x6b

    .line 114
    .line 115
    move-object v13, v2

    .line 116
    invoke-direct/range {v13 .. v19}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 117
    .line 118
    .line 119
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 123
    .line 124
    const/16 v3, 0x64

    .line 125
    .line 126
    const-string v13, "4"

    .line 127
    .line 128
    invoke-direct {v2, v8, v5, v13, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 129
    .line 130
    .line 131
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 135
    .line 136
    const/16 v3, 0x65

    .line 137
    .line 138
    const-string v14, "5"

    .line 139
    .line 140
    invoke-direct {v2, v8, v4, v14, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 141
    .line 142
    .line 143
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 147
    .line 148
    const/16 v3, 0x66

    .line 149
    .line 150
    const-string v15, "6"

    .line 151
    .line 152
    invoke-direct {v2, v8, v8, v15, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 159
    .line 160
    const-string v3, "1"

    .line 161
    .line 162
    const/16 v8, 0x61

    .line 163
    .line 164
    invoke-direct {v2, v7, v5, v3, v8}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 171
    .line 172
    const-string v3, "2"

    .line 173
    .line 174
    const/16 v8, 0x62

    .line 175
    .line 176
    invoke-direct {v2, v7, v4, v3, v8}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 177
    .line 178
    .line 179
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 183
    .line 184
    const-string v3, "3"

    .line 185
    .line 186
    const/16 v8, 0x63

    .line 187
    .line 188
    const/4 v4, 0x3

    .line 189
    invoke-direct {v2, v7, v4, v3, v8}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 190
    .line 191
    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 196
    .line 197
    const/16 v19, 0x4

    .line 198
    .line 199
    const/16 v20, 0x4

    .line 200
    .line 201
    const/16 v21, 0x2

    .line 202
    .line 203
    const/16 v22, 0x1

    .line 204
    .line 205
    const-string v23, "Enter"

    .line 206
    .line 207
    const/16 v24, 0x6c

    .line 208
    .line 209
    move-object/from16 v18, v2

    .line 210
    .line 211
    invoke-direct/range {v18 .. v24}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 212
    .line 213
    .line 214
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 218
    .line 219
    const/16 v26, 0x5

    .line 220
    .line 221
    const/16 v27, 0x1

    .line 222
    .line 223
    const/16 v28, 0x1

    .line 224
    .line 225
    const/16 v29, 0x2

    .line 226
    .line 227
    const-string v30, "0"

    .line 228
    .line 229
    const/16 v31, 0x60

    .line 230
    .line 231
    move-object/from16 v25, v2

    .line 232
    .line 233
    invoke-direct/range {v25 .. v31}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 234
    .line 235
    .line 236
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    .line 238
    .line 239
    new-instance v2, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 240
    .line 241
    const-string v3, "."

    .line 242
    .line 243
    const/16 v4, 0x6e

    .line 244
    .line 245
    const/4 v8, 0x5

    .line 246
    const/4 v7, 0x3

    .line 247
    invoke-direct {v2, v8, v7, v3, v4}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 248
    .line 249
    .line 250
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 254
    .line 255
    const/16 v20, 0x1

    .line 256
    .line 257
    const/16 v21, 0x1

    .line 258
    .line 259
    const/16 v23, 0x2

    .line 260
    .line 261
    const-string v24, "ESC"

    .line 262
    .line 263
    const/16 v25, 0x1b

    .line 264
    .line 265
    move-object/from16 v19, v1

    .line 266
    .line 267
    invoke-direct/range {v19 .. v25}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 268
    .line 269
    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 274
    .line 275
    const-string v2, "F1"

    .line 276
    .line 277
    const/16 v3, 0x70

    .line 278
    .line 279
    const/4 v4, 0x3

    .line 280
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 281
    .line 282
    .line 283
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 287
    .line 288
    const-string v2, "F2"

    .line 289
    .line 290
    const/16 v3, 0x71

    .line 291
    .line 292
    const/4 v4, 0x4

    .line 293
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 300
    .line 301
    const-string v2, "F3"

    .line 302
    .line 303
    const/16 v3, 0x72

    .line 304
    .line 305
    invoke-direct {v1, v5, v8, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 306
    .line 307
    .line 308
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .line 310
    .line 311
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 312
    .line 313
    const-string v2, "F4"

    .line 314
    .line 315
    const/16 v3, 0x73

    .line 316
    .line 317
    const/4 v4, 0x6

    .line 318
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    .line 323
    .line 324
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 325
    .line 326
    const-string v2, "F5"

    .line 327
    .line 328
    const/16 v3, 0x74

    .line 329
    .line 330
    const/4 v7, 0x7

    .line 331
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 332
    .line 333
    .line 334
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 338
    .line 339
    const-string v2, "F6"

    .line 340
    .line 341
    const/16 v3, 0x75

    .line 342
    .line 343
    const/16 v7, 0x8

    .line 344
    .line 345
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 352
    .line 353
    const-string v2, "F7"

    .line 354
    .line 355
    const/16 v3, 0x76

    .line 356
    .line 357
    const/16 v7, 0x9

    .line 358
    .line 359
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 360
    .line 361
    .line 362
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 366
    .line 367
    const-string v2, "F8"

    .line 368
    .line 369
    const/16 v3, 0x77

    .line 370
    .line 371
    const/16 v7, 0xa

    .line 372
    .line 373
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 374
    .line 375
    .line 376
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 380
    .line 381
    const-string v2, "F9"

    .line 382
    .line 383
    const/16 v3, 0x78

    .line 384
    .line 385
    const/16 v7, 0xb

    .line 386
    .line 387
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 394
    .line 395
    const-string v2, "F10"

    .line 396
    .line 397
    const/16 v3, 0x79

    .line 398
    .line 399
    const/16 v7, 0xc

    .line 400
    .line 401
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 402
    .line 403
    .line 404
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 408
    .line 409
    const-string v2, "F11"

    .line 410
    .line 411
    const/16 v3, 0x7a

    .line 412
    .line 413
    const/16 v7, 0xd

    .line 414
    .line 415
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    .line 420
    .line 421
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 422
    .line 423
    const-string v2, "F12"

    .line 424
    .line 425
    const/16 v3, 0x7b

    .line 426
    .line 427
    const/16 v7, 0xe

    .line 428
    .line 429
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 430
    .line 431
    .line 432
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 436
    .line 437
    const-string v2, "`"

    .line 438
    .line 439
    const/16 v3, 0xc0

    .line 440
    .line 441
    const/4 v7, 0x2

    .line 442
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 443
    .line 444
    .line 445
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    .line 447
    .line 448
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 449
    .line 450
    const-string v2, "1"

    .line 451
    .line 452
    const/16 v3, 0x31

    .line 453
    .line 454
    invoke-direct {v1, v7, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 461
    .line 462
    const-string v2, "2"

    .line 463
    .line 464
    const/16 v3, 0x32

    .line 465
    .line 466
    const/4 v5, 0x3

    .line 467
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 468
    .line 469
    .line 470
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    .line 472
    .line 473
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 474
    .line 475
    const-string v2, "3"

    .line 476
    .line 477
    const/16 v3, 0x33

    .line 478
    .line 479
    const/4 v5, 0x4

    .line 480
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 481
    .line 482
    .line 483
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 487
    .line 488
    const/16 v2, 0x34

    .line 489
    .line 490
    invoke-direct {v1, v7, v8, v13, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 491
    .line 492
    .line 493
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 497
    .line 498
    const/16 v2, 0x35

    .line 499
    .line 500
    invoke-direct {v1, v7, v4, v14, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 501
    .line 502
    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    .line 505
    .line 506
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 507
    .line 508
    const/16 v2, 0x36

    .line 509
    .line 510
    const/4 v3, 0x7

    .line 511
    invoke-direct {v1, v7, v3, v15, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 512
    .line 513
    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 518
    .line 519
    const/16 v2, 0x37

    .line 520
    .line 521
    const/16 v3, 0x8

    .line 522
    .line 523
    invoke-direct {v1, v7, v3, v10, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 524
    .line 525
    .line 526
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 530
    .line 531
    const/16 v2, 0x38

    .line 532
    .line 533
    const/16 v3, 0x9

    .line 534
    .line 535
    invoke-direct {v1, v7, v3, v11, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 536
    .line 537
    .line 538
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 539
    .line 540
    .line 541
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 542
    .line 543
    const/16 v2, 0x39

    .line 544
    .line 545
    const/16 v3, 0xa

    .line 546
    .line 547
    invoke-direct {v1, v7, v3, v12, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 548
    .line 549
    .line 550
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 554
    .line 555
    const-string v2, "0"

    .line 556
    .line 557
    const/16 v3, 0x30

    .line 558
    .line 559
    const/16 v5, 0xb

    .line 560
    .line 561
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 562
    .line 563
    .line 564
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    .line 566
    .line 567
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 568
    .line 569
    const/16 v2, 0xbd

    .line 570
    .line 571
    const/16 v3, 0xc

    .line 572
    .line 573
    invoke-direct {v1, v7, v3, v9, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 574
    .line 575
    .line 576
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 580
    .line 581
    const-string v2, "="

    .line 582
    .line 583
    const/16 v3, 0xbb

    .line 584
    .line 585
    const/16 v5, 0xd

    .line 586
    .line 587
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 588
    .line 589
    .line 590
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 594
    .line 595
    const/4 v10, 0x2

    .line 596
    const/16 v11, 0xe

    .line 597
    .line 598
    const/4 v12, 0x1

    .line 599
    const/4 v13, 0x2

    .line 600
    const-string v14, "BackSpace"

    .line 601
    .line 602
    const/16 v15, 0x8

    .line 603
    .line 604
    move-object v9, v1

    .line 605
    invoke-direct/range {v9 .. v15}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 606
    .line 607
    .line 608
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 612
    .line 613
    const-string v2, "Tab"

    .line 614
    .line 615
    const/4 v3, 0x1

    .line 616
    const/4 v5, 0x3

    .line 617
    const/16 v7, 0x9

    .line 618
    .line 619
    invoke-direct {v1, v5, v3, v2, v7}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 620
    .line 621
    .line 622
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 626
    .line 627
    const-string v2, "Q"

    .line 628
    .line 629
    const/16 v3, 0x51

    .line 630
    .line 631
    const/4 v7, 0x2

    .line 632
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 633
    .line 634
    .line 635
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    .line 637
    .line 638
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 639
    .line 640
    const-string v2, "W"

    .line 641
    .line 642
    const/16 v3, 0x57

    .line 643
    .line 644
    invoke-direct {v1, v5, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 645
    .line 646
    .line 647
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    .line 649
    .line 650
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 651
    .line 652
    const-string v2, "E"

    .line 653
    .line 654
    const/16 v3, 0x45

    .line 655
    .line 656
    const/4 v7, 0x4

    .line 657
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 658
    .line 659
    .line 660
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 664
    .line 665
    const-string v2, "R"

    .line 666
    .line 667
    const/16 v3, 0x52

    .line 668
    .line 669
    invoke-direct {v1, v5, v8, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 670
    .line 671
    .line 672
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    .line 674
    .line 675
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 676
    .line 677
    const-string v2, "T"

    .line 678
    .line 679
    const/16 v3, 0x54

    .line 680
    .line 681
    invoke-direct {v1, v5, v4, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 682
    .line 683
    .line 684
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 688
    .line 689
    const-string v2, "Y"

    .line 690
    .line 691
    const/16 v3, 0x59

    .line 692
    .line 693
    const/4 v7, 0x7

    .line 694
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 695
    .line 696
    .line 697
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 698
    .line 699
    .line 700
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 701
    .line 702
    const-string v2, "U"

    .line 703
    .line 704
    const/16 v3, 0x55

    .line 705
    .line 706
    const/16 v7, 0x8

    .line 707
    .line 708
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 709
    .line 710
    .line 711
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    .line 713
    .line 714
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 715
    .line 716
    const-string v2, "I"

    .line 717
    .line 718
    const/16 v3, 0x49

    .line 719
    .line 720
    const/16 v7, 0x9

    .line 721
    .line 722
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 723
    .line 724
    .line 725
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 726
    .line 727
    .line 728
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 729
    .line 730
    const-string v2, "O"

    .line 731
    .line 732
    const/16 v3, 0x4f

    .line 733
    .line 734
    const/16 v7, 0xa

    .line 735
    .line 736
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 737
    .line 738
    .line 739
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 743
    .line 744
    const-string v2, "P"

    .line 745
    .line 746
    const/16 v3, 0x50

    .line 747
    .line 748
    const/16 v7, 0xb

    .line 749
    .line 750
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 751
    .line 752
    .line 753
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    .line 755
    .line 756
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 757
    .line 758
    const-string v2, "["

    .line 759
    .line 760
    const/16 v3, 0xdb

    .line 761
    .line 762
    const/16 v7, 0xc

    .line 763
    .line 764
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 765
    .line 766
    .line 767
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    .line 769
    .line 770
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 771
    .line 772
    const-string v2, "]"

    .line 773
    .line 774
    const/16 v3, 0xdd

    .line 775
    .line 776
    const/16 v7, 0xd

    .line 777
    .line 778
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 779
    .line 780
    .line 781
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    .line 783
    .line 784
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 785
    .line 786
    const-string v2, "\\"

    .line 787
    .line 788
    const/16 v3, 0xdc

    .line 789
    .line 790
    const/16 v7, 0xe

    .line 791
    .line 792
    invoke-direct {v1, v5, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 793
    .line 794
    .line 795
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 799
    .line 800
    const/4 v10, 0x4

    .line 801
    const/4 v11, 0x1

    .line 802
    const-string v14, "CapsLock"

    .line 803
    .line 804
    const/16 v15, 0x14

    .line 805
    .line 806
    move-object v9, v1

    .line 807
    invoke-direct/range {v9 .. v15}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 808
    .line 809
    .line 810
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 811
    .line 812
    .line 813
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 814
    .line 815
    const-string v2, "A"

    .line 816
    .line 817
    const/16 v3, 0x41

    .line 818
    .line 819
    const/4 v5, 0x3

    .line 820
    const/4 v7, 0x4

    .line 821
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 822
    .line 823
    .line 824
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    .line 826
    .line 827
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 828
    .line 829
    const-string v2, "S"

    .line 830
    .line 831
    const/16 v3, 0x53

    .line 832
    .line 833
    invoke-direct {v1, v7, v7, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 834
    .line 835
    .line 836
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    .line 838
    .line 839
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 840
    .line 841
    const-string v2, "D"

    .line 842
    .line 843
    const/16 v3, 0x44

    .line 844
    .line 845
    invoke-direct {v1, v7, v8, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 846
    .line 847
    .line 848
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    .line 850
    .line 851
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 852
    .line 853
    const-string v2, "F"

    .line 854
    .line 855
    const/16 v3, 0x46

    .line 856
    .line 857
    invoke-direct {v1, v7, v4, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 858
    .line 859
    .line 860
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 864
    .line 865
    const-string v2, "G"

    .line 866
    .line 867
    const/16 v3, 0x47

    .line 868
    .line 869
    const/4 v5, 0x7

    .line 870
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 871
    .line 872
    .line 873
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    .line 875
    .line 876
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 877
    .line 878
    const-string v2, "H"

    .line 879
    .line 880
    const/16 v3, 0x48

    .line 881
    .line 882
    const/16 v5, 0x8

    .line 883
    .line 884
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 885
    .line 886
    .line 887
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 891
    .line 892
    const-string v2, "J"

    .line 893
    .line 894
    const/16 v3, 0x4a

    .line 895
    .line 896
    const/16 v5, 0x9

    .line 897
    .line 898
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 899
    .line 900
    .line 901
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 902
    .line 903
    .line 904
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 905
    .line 906
    const-string v2, "K"

    .line 907
    .line 908
    const/16 v3, 0x4b

    .line 909
    .line 910
    const/16 v5, 0xa

    .line 911
    .line 912
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 913
    .line 914
    .line 915
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    .line 917
    .line 918
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 919
    .line 920
    const-string v2, "L"

    .line 921
    .line 922
    const/16 v3, 0x4c

    .line 923
    .line 924
    const/16 v5, 0xb

    .line 925
    .line 926
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 927
    .line 928
    .line 929
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 930
    .line 931
    .line 932
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 933
    .line 934
    const-string v2, ";"

    .line 935
    .line 936
    const/16 v3, 0xba

    .line 937
    .line 938
    const/16 v5, 0xc

    .line 939
    .line 940
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 941
    .line 942
    .line 943
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 944
    .line 945
    .line 946
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 947
    .line 948
    const-string v2, "\'"

    .line 949
    .line 950
    const/16 v3, 0xde

    .line 951
    .line 952
    const/16 v5, 0xd

    .line 953
    .line 954
    invoke-direct {v1, v7, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 955
    .line 956
    .line 957
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 958
    .line 959
    .line 960
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 961
    .line 962
    const/16 v11, 0xe

    .line 963
    .line 964
    const-string v14, "Enter"

    .line 965
    .line 966
    const/16 v15, 0xd

    .line 967
    .line 968
    move-object v9, v1

    .line 969
    invoke-direct/range {v9 .. v15}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 970
    .line 971
    .line 972
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 976
    .line 977
    const-string v2, "Shift"

    .line 978
    .line 979
    const/16 v3, 0xa0

    .line 980
    .line 981
    const/4 v5, 0x1

    .line 982
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 983
    .line 984
    .line 985
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 986
    .line 987
    .line 988
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 989
    .line 990
    const-string v2, "Z"

    .line 991
    .line 992
    const/16 v3, 0x5a

    .line 993
    .line 994
    const/4 v5, 0x2

    .line 995
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 996
    .line 997
    .line 998
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 999
    .line 1000
    .line 1001
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1002
    .line 1003
    const-string v2, "X"

    .line 1004
    .line 1005
    const/16 v3, 0x58

    .line 1006
    .line 1007
    const/4 v5, 0x3

    .line 1008
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1009
    .line 1010
    .line 1011
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1012
    .line 1013
    .line 1014
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1015
    .line 1016
    const-string v2, "C"

    .line 1017
    .line 1018
    const/16 v3, 0x43

    .line 1019
    .line 1020
    const/4 v5, 0x4

    .line 1021
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1022
    .line 1023
    .line 1024
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1025
    .line 1026
    .line 1027
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1028
    .line 1029
    const-string v2, "V"

    .line 1030
    .line 1031
    const/16 v3, 0x56

    .line 1032
    .line 1033
    invoke-direct {v1, v8, v8, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1034
    .line 1035
    .line 1036
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1040
    .line 1041
    const-string v2, "B"

    .line 1042
    .line 1043
    const/16 v3, 0x42

    .line 1044
    .line 1045
    invoke-direct {v1, v8, v4, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1046
    .line 1047
    .line 1048
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    .line 1050
    .line 1051
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1052
    .line 1053
    const-string v2, "N"

    .line 1054
    .line 1055
    const/16 v3, 0x4e

    .line 1056
    .line 1057
    const/4 v5, 0x7

    .line 1058
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1059
    .line 1060
    .line 1061
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1062
    .line 1063
    .line 1064
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1065
    .line 1066
    const-string v2, "M"

    .line 1067
    .line 1068
    const/16 v3, 0x4d

    .line 1069
    .line 1070
    const/16 v5, 0x8

    .line 1071
    .line 1072
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1073
    .line 1074
    .line 1075
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    .line 1077
    .line 1078
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1079
    .line 1080
    const-string v2, ","

    .line 1081
    .line 1082
    const/16 v3, 0xbc

    .line 1083
    .line 1084
    const/16 v5, 0x9

    .line 1085
    .line 1086
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1087
    .line 1088
    .line 1089
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1090
    .line 1091
    .line 1092
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1093
    .line 1094
    const-string v2, "."

    .line 1095
    .line 1096
    const/16 v3, 0xbe

    .line 1097
    .line 1098
    const/16 v5, 0xa

    .line 1099
    .line 1100
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1101
    .line 1102
    .line 1103
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1104
    .line 1105
    .line 1106
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1107
    .line 1108
    const/16 v2, 0xbf

    .line 1109
    .line 1110
    const/16 v3, 0xb

    .line 1111
    .line 1112
    invoke-direct {v1, v8, v3, v6, v2}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1113
    .line 1114
    .line 1115
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1116
    .line 1117
    .line 1118
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1119
    .line 1120
    const/4 v10, 0x5

    .line 1121
    const/16 v11, 0xc

    .line 1122
    .line 1123
    const-string v14, "Shift"

    .line 1124
    .line 1125
    const/16 v15, 0xa1

    .line 1126
    .line 1127
    move-object v9, v1

    .line 1128
    invoke-direct/range {v9 .. v15}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 1129
    .line 1130
    .line 1131
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1132
    .line 1133
    .line 1134
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1135
    .line 1136
    const-string v2, "\u2191"

    .line 1137
    .line 1138
    const/16 v3, 0x26

    .line 1139
    .line 1140
    const/16 v5, 0xe

    .line 1141
    .line 1142
    invoke-direct {v1, v8, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1143
    .line 1144
    .line 1145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    .line 1147
    .line 1148
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1149
    .line 1150
    const-string v2, "Ctrl"

    .line 1151
    .line 1152
    const/16 v3, 0x11

    .line 1153
    .line 1154
    const/4 v5, 0x1

    .line 1155
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1156
    .line 1157
    .line 1158
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1159
    .line 1160
    .line 1161
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1162
    .line 1163
    const-string v2, "Alt"

    .line 1164
    .line 1165
    const/16 v3, 0x12

    .line 1166
    .line 1167
    const/4 v5, 0x2

    .line 1168
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1169
    .line 1170
    .line 1171
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1172
    .line 1173
    .line 1174
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1175
    .line 1176
    const/4 v7, 0x6

    .line 1177
    const/4 v8, 0x3

    .line 1178
    const/4 v9, 0x1

    .line 1179
    const/16 v10, 0xa

    .line 1180
    .line 1181
    const-string v11, "Space"

    .line 1182
    .line 1183
    const/16 v12, 0x20

    .line 1184
    .line 1185
    move-object v6, v1

    .line 1186
    invoke-direct/range {v6 .. v12}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IIIILjava/lang/String;I)V

    .line 1187
    .line 1188
    .line 1189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1190
    .line 1191
    .line 1192
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1193
    .line 1194
    const-string v2, "\u2190"

    .line 1195
    .line 1196
    const/16 v3, 0x25

    .line 1197
    .line 1198
    const/16 v5, 0xd

    .line 1199
    .line 1200
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1201
    .line 1202
    .line 1203
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    .line 1205
    .line 1206
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1207
    .line 1208
    const-string v2, "\u2193"

    .line 1209
    .line 1210
    const/16 v3, 0x28

    .line 1211
    .line 1212
    const/16 v5, 0xe

    .line 1213
    .line 1214
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1215
    .line 1216
    .line 1217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    .line 1219
    .line 1220
    new-instance v1, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;

    .line 1221
    .line 1222
    const-string v2, "\u2192"

    .line 1223
    .line 1224
    const/16 v3, 0x27

    .line 1225
    .line 1226
    const/16 v5, 0xf

    .line 1227
    .line 1228
    invoke-direct {v1, v4, v5, v2, v3}, Lcom/haima/hmcp/virtual/bean/HmVirKeyboardInfoBean;-><init>(IILjava/lang/String;I)V

    .line 1229
    .line 1230
    .line 1231
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
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
