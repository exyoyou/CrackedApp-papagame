.class public final Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\"\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u001d\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\t\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;",
        "Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;",
        "<init>",
        "()V",
        "gamepad",
        "",
        "",
        "",
        "getGamepad",
        "()Ljava/util/Map;",
        "shoulder",
        "",
        "getShoulder",
        "()Ljava/util/Set;",
        "mouseMap",
        "getMouseMap",
        "load",
        "",
        "view",
        "Landroid/view/View;",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final gamepad:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mouseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final shoulder:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/16 v1, 0xc

    .line 7
    .line 8
    new-array v1, v1, [Lkotlin/Pair;

    .line 9
    .line 10
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 11
    .line 12
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const v4, 0x7f080764

    .line 17
    .line 18
    .line 19
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {v3, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x0

    .line 28
    aput-object v3, v1, v4

    .line 29
    .line 30
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const v6, 0x7f08075e

    .line 37
    .line 38
    .line 39
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    invoke-static {v5, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    const/4 v6, 0x1

    .line 48
    aput-object v5, v1, v6

    .line 49
    .line 50
    sget-object v5, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnLS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 51
    .line 52
    invoke-virtual {v5}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    const v8, 0x7f080761

    .line 57
    .line 58
    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v8

    .line 63
    invoke-static {v7, v8}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v8, 0x2

    .line 68
    aput-object v7, v1, v8

    .line 69
    .line 70
    sget-object v7, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRT:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 71
    .line 72
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    const v10, 0x7f080777

    .line 77
    .line 78
    .line 79
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-static {v9, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    const/4 v10, 0x3

    .line 88
    aput-object v9, v1, v10

    .line 89
    .line 90
    sget-object v9, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 91
    .line 92
    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v11

    .line 96
    const v12, 0x7f080771

    .line 97
    .line 98
    .line 99
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    invoke-static {v11, v12}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v11

    .line 107
    const/4 v12, 0x4

    .line 108
    aput-object v11, v1, v12

    .line 109
    .line 110
    sget-object v11, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnRS:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 111
    .line 112
    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    const v14, 0x7f080774

    .line 117
    .line 118
    .line 119
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v14

    .line 123
    invoke-static {v13, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    const/4 v14, 0x5

    .line 128
    aput-object v13, v1, v14

    .line 129
    .line 130
    sget-object v13, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnA:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 131
    .line 132
    invoke-virtual {v13}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v13

    .line 136
    const v15, 0x7f080747

    .line 137
    .line 138
    .line 139
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v15

    .line 143
    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 144
    .line 145
    .line 146
    move-result-object v13

    .line 147
    const/4 v15, 0x6

    .line 148
    aput-object v13, v1, v15

    .line 149
    .line 150
    sget-object v13, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnB:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 151
    .line 152
    invoke-virtual {v13}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    const v15, 0x7f080748

    .line 157
    .line 158
    .line 159
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v15

    .line 163
    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 164
    .line 165
    .line 166
    move-result-object v13

    .line 167
    const/4 v15, 0x7

    .line 168
    aput-object v13, v1, v15

    .line 169
    .line 170
    sget-object v13, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnX:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 171
    .line 172
    invoke-virtual {v13}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v13

    .line 176
    const v15, 0x7f080793

    .line 177
    .line 178
    .line 179
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object v15

    .line 183
    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 184
    .line 185
    .line 186
    move-result-object v13

    .line 187
    const/16 v15, 0x8

    .line 188
    .line 189
    aput-object v13, v1, v15

    .line 190
    .line 191
    sget-object v13, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnY:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 192
    .line 193
    invoke-virtual {v13}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    const v15, 0x7f080794

    .line 198
    .line 199
    .line 200
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v15

    .line 204
    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 205
    .line 206
    .line 207
    move-result-object v13

    .line 208
    const/16 v15, 0x9

    .line 209
    .line 210
    aput-object v13, v1, v15

    .line 211
    .line 212
    sget-object v13, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnSelect:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 213
    .line 214
    invoke-virtual {v13}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v13

    .line 218
    const v15, 0x7f08077a

    .line 219
    .line 220
    .line 221
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 226
    .line 227
    .line 228
    move-result-object v13

    .line 229
    const/16 v15, 0xa

    .line 230
    .line 231
    aput-object v13, v1, v15

    .line 232
    .line 233
    sget-object v13, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->BtnStart:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 234
    .line 235
    invoke-virtual {v13}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    const v15, 0x7f080767

    .line 240
    .line 241
    .line 242
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v15

    .line 246
    invoke-static {v13, v15}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 247
    .line 248
    .line 249
    move-result-object v13

    .line 250
    const/16 v15, 0xb

    .line 251
    .line 252
    aput-object v13, v1, v15

    .line 253
    .line 254
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->gamepad:Ljava/util/Map;

    .line 259
    .line 260
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v15

    .line 264
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v16

    .line 268
    invoke-virtual {v5}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v17

    .line 272
    invoke-virtual {v7}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v18

    .line 276
    invoke-virtual {v9}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v19

    .line 280
    invoke-virtual {v11}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v20

    .line 284
    filled-new-array/range {v15 .. v20}, [Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-static {v1}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 289
    .line 290
    .line 291
    move-result-object v1

    .line 292
    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->shoulder:Ljava/util/Set;

    .line 293
    .line 294
    new-array v1, v14, [Lkotlin/Pair;

    .line 295
    .line 296
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 297
    .line 298
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    const v3, 0x7f080768

    .line 303
    .line 304
    .line 305
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 306
    .line 307
    .line 308
    move-result-object v3

    .line 309
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    aput-object v2, v1, v4

    .line 314
    .line 315
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 316
    .line 317
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    const v3, 0x7f08076e

    .line 322
    .line 323
    .line 324
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 329
    .line 330
    .line 331
    move-result-object v2

    .line 332
    aput-object v2, v1, v6

    .line 333
    .line 334
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMiddle:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 335
    .line 336
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    const v3, 0x7f08076b

    .line 341
    .line 342
    .line 343
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    aput-object v2, v1, v8

    .line 352
    .line 353
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 354
    .line 355
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    const v3, 0x7f08076c

    .line 360
    .line 361
    .line 362
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    aput-object v2, v1, v10

    .line 371
    .line 372
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 373
    .line 374
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v2

    .line 378
    const v3, 0x7f080769

    .line 379
    .line 380
    .line 381
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    aput-object v2, v1, v12

    .line 390
    .line 391
    invoke-static {v1}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    iput-object v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->mouseMap:Ljava/util/Map;

    .line 396
    .line 397
    return-void
.end method


# virtual methods
.method public final getGamepad()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->gamepad:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMouseMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->mouseMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShoulder()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->shoulder:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public load(Landroid/view/View;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 6
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/hmcloud/HMKeyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p1, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    .line 32
    .line 33
    const p2, 0x7f08070e

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;->setStickResource(I)V

    .line 37
    .line 38
    .line 39
    goto/16 :goto_4

    .line 40
    .line 41
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1e

    .line 56
    .line 57
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    .line 58
    .line 59
    const p2, 0x7f08070f

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;->setStickResource(I)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_4

    .line 66
    .line 67
    :cond_1
    instance-of v0, p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 68
    .line 69
    const v1, 0x7f08076a

    .line 70
    .line 71
    .line 72
    const v2, 0x7f08076d

    .line 73
    .line 74
    .line 75
    if-eqz v0, :cond_1b

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getCombine()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v3, 0x0

    .line 82
    const/4 v4, 0x1

    .line 83
    if-eqz v0, :cond_2

    .line 84
    .line 85
    check-cast v0, Ljava/util/Collection;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    xor-int/2addr v0, v4

    .line 92
    if-ne v0, v4, :cond_2

    .line 93
    .line 94
    const/4 v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const/4 v0, 0x0

    .line 97
    :goto_0
    if-eqz v0, :cond_4

    .line 98
    .line 99
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 100
    .line 101
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "\u7ec4\u5408\u952e"

    .line 106
    .line 107
    if-nez v0, :cond_3

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    if-nez v0, :cond_3

    .line 114
    .line 115
    move-object v0, v1

    .line 116
    :cond_3
    invoke-virtual {p1, v1, v0}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setTextButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_4

    .line 120
    .line 121
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->mouseMap:Ljava/util/Map;

    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_c

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 138
    .line 139
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_6

    .line 154
    .line 155
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 156
    .line 157
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->mouseMap:Ljava/util/Map;

    .line 158
    .line 159
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    check-cast v0, Ljava/lang/Number;

    .line 171
    .line 172
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    if-nez v1, :cond_5

    .line 181
    .line 182
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    if-nez v1, :cond_5

    .line 187
    .line 188
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    :cond_5
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setIconButton(ILjava/lang/String;)V

    .line 193
    .line 194
    .line 195
    goto/16 :goto_4

    .line 196
    .line 197
    :cond_6
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 198
    .line 199
    invoke-virtual {p1, v2}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setImageButton(I)V

    .line 200
    .line 201
    .line 202
    goto/16 :goto_4

    .line 203
    .line 204
    :cond_7
    sget-object v2, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 205
    .line 206
    invoke-virtual {v2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_a

    .line 215
    .line 216
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    if-eqz v0, :cond_9

    .line 221
    .line 222
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 223
    .line 224
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->mouseMap:Ljava/util/Map;

    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    .line 236
    .line 237
    check-cast v0, Ljava/lang/Number;

    .line 238
    .line 239
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    if-nez v1, :cond_8

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-nez v1, :cond_8

    .line 254
    .line 255
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    :cond_8
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setIconButton(ILjava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_4

    .line 263
    .line 264
    :cond_9
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 265
    .line 266
    invoke-virtual {p1, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setImageButton(I)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_4

    .line 270
    .line 271
    :cond_a
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 272
    .line 273
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->mouseMap:Ljava/util/Map;

    .line 274
    .line 275
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 284
    .line 285
    .line 286
    check-cast v0, Ljava/lang/Number;

    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    if-nez v1, :cond_b

    .line 297
    .line 298
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    if-nez v1, :cond_b

    .line 303
    .line 304
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    :cond_b
    invoke-virtual {p1, v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setIconButton(ILjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    goto/16 :goto_4

    .line 312
    .line 313
    :cond_c
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->shoulder:Ljava/util/Set;

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_10

    .line 324
    .line 325
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;

    .line 326
    .line 327
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;->parse(Ljava/lang/String;)Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-eqz v0, :cond_d

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getNickname()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    if-nez v0, :cond_e

    .line 342
    .line 343
    :cond_d
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    :cond_e
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 348
    .line 349
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    if-nez v1, :cond_f

    .line 354
    .line 355
    goto :goto_1

    .line 356
    :cond_f
    move-object v0, v1

    .line 357
    :goto_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object p2

    .line 361
    invoke-virtual {p1, v0, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setTextButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    goto/16 :goto_4

    .line 365
    .line 366
    :cond_10
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->gamepad:Ljava/util/Map;

    .line 367
    .line 368
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    move-result v0

    .line 380
    if-eqz v0, :cond_17

    .line 381
    .line 382
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    if-eqz v0, :cond_11

    .line 387
    .line 388
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    if-nez v0, :cond_12

    .line 393
    .line 394
    :cond_11
    const/4 v3, 0x1

    .line 395
    :cond_12
    if-nez v3, :cond_16

    .line 396
    .line 397
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;

    .line 398
    .line 399
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;->parse(Ljava/lang/String;)Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    if-eqz v0, :cond_13

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getNickname()Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    if-nez v0, :cond_14

    .line 414
    .line 415
    :cond_13
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    :cond_14
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 420
    .line 421
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    if-nez v1, :cond_15

    .line 426
    .line 427
    goto :goto_2

    .line 428
    :cond_15
    move-object v0, v1

    .line 429
    :goto_2
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object p2

    .line 433
    invoke-virtual {p1, v0, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setTextButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    goto/16 :goto_4

    .line 437
    .line 438
    :cond_16
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 439
    .line 440
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->gamepad:Ljava/util/Map;

    .line 441
    .line 442
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object p2

    .line 446
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object p2

    .line 450
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 451
    .line 452
    .line 453
    check-cast p2, Ljava/lang/Number;

    .line 454
    .line 455
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 456
    .line 457
    .line 458
    move-result p2

    .line 459
    invoke-virtual {p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setImageButton(I)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_4

    .line 463
    .line 464
    :cond_17
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;

    .line 465
    .line 466
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    invoke-virtual {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;->parse(Ljava/lang/String;)Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    if-eqz v0, :cond_18

    .line 475
    .line 476
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getNickname()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    if-nez v0, :cond_19

    .line 481
    .line 482
    :cond_18
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    :cond_19
    check-cast p1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 487
    .line 488
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    if-nez v1, :cond_1a

    .line 493
    .line 494
    goto :goto_3

    .line 495
    :cond_1a
    move-object v0, v1

    .line 496
    :goto_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object p2

    .line 500
    invoke-virtual {p1, v0, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;->setTextButton(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    goto :goto_4

    .line 504
    :cond_1b
    instance-of v0, p1, Landroid/widget/ImageView;

    .line 505
    .line 506
    if-eqz v0, :cond_1e

    .line 507
    .line 508
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->gamepad:Ljava/util/Map;

    .line 509
    .line 510
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v3

    .line 514
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    if-eqz v0, :cond_1c

    .line 519
    .line 520
    check-cast p1, Landroid/widget/ImageView;

    .line 521
    .line 522
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->gamepad:Ljava/util/Map;

    .line 523
    .line 524
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object p2

    .line 528
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object p2

    .line 532
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 533
    .line 534
    .line 535
    check-cast p2, Ljava/lang/Number;

    .line 536
    .line 537
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 538
    .line 539
    .line 540
    move-result p2

    .line 541
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 542
    .line 543
    .line 544
    goto :goto_4

    .line 545
    :cond_1c
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    sget-object v3, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 550
    .line 551
    invoke-virtual {v3}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v3

    .line 555
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 556
    .line 557
    .line 558
    move-result v0

    .line 559
    if-eqz v0, :cond_1d

    .line 560
    .line 561
    check-cast p1, Landroid/widget/ImageView;

    .line 562
    .line 563
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    .line 565
    .line 566
    goto :goto_4

    .line 567
    :cond_1d
    invoke-virtual {p2}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p2

    .line 571
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 572
    .line 573
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 578
    .line 579
    .line 580
    move-result p2

    .line 581
    if-eqz p2, :cond_1e

    .line 582
    .line 583
    check-cast p1, Landroid/widget/ImageView;

    .line 584
    .line 585
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    .line 587
    .line 588
    :cond_1e
    :goto_4
    return-void
.end method
