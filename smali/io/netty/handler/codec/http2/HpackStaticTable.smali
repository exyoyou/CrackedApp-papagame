.class final Lio/netty/handler/codec/http2/HpackStaticTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final STATIC_INDEX_BY_NAME:Lio/netty/handler/codec/http2/CharSequenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATIC_TABLE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/handler/codec/http2/HpackHeaderField;",
            ">;"
        }
    .end annotation
.end field

.field static final length:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0x3d

    .line 2
    .line 3
    new-array v0, v0, [Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 4
    .line 5
    const-string v1, ":authority"

    .line 6
    .line 7
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    const-string v1, "GET"

    .line 15
    .line 16
    const-string v2, ":method"

    .line 17
    .line 18
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x1

    .line 23
    aput-object v1, v0, v3

    .line 24
    .line 25
    const-string v1, "POST"

    .line 26
    .line 27
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x2

    .line 32
    aput-object v1, v0, v2

    .line 33
    .line 34
    const-string v1, "/"

    .line 35
    .line 36
    const-string v2, ":path"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v3, 0x3

    .line 43
    aput-object v1, v0, v3

    .line 44
    .line 45
    const-string v1, "/index.html"

    .line 46
    .line 47
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x4

    .line 52
    aput-object v1, v0, v2

    .line 53
    .line 54
    const-string v1, "http"

    .line 55
    .line 56
    const-string v2, ":scheme"

    .line 57
    .line 58
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    const/4 v3, 0x5

    .line 63
    aput-object v1, v0, v3

    .line 64
    .line 65
    const-string v1, "https"

    .line 66
    .line 67
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const/4 v2, 0x6

    .line 72
    aput-object v1, v0, v2

    .line 73
    .line 74
    const-string v1, "200"

    .line 75
    .line 76
    const-string v2, ":status"

    .line 77
    .line 78
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v3, 0x7

    .line 83
    aput-object v1, v0, v3

    .line 84
    .line 85
    const-string v1, "204"

    .line 86
    .line 87
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/16 v3, 0x8

    .line 92
    .line 93
    aput-object v1, v0, v3

    .line 94
    .line 95
    const-string v1, "206"

    .line 96
    .line 97
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const/16 v3, 0x9

    .line 102
    .line 103
    aput-object v1, v0, v3

    .line 104
    .line 105
    const-string v1, "304"

    .line 106
    .line 107
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/16 v3, 0xa

    .line 112
    .line 113
    aput-object v1, v0, v3

    .line 114
    .line 115
    const-string v1, "400"

    .line 116
    .line 117
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const/16 v3, 0xb

    .line 122
    .line 123
    aput-object v1, v0, v3

    .line 124
    .line 125
    const-string v1, "404"

    .line 126
    .line 127
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/16 v3, 0xc

    .line 132
    .line 133
    aput-object v1, v0, v3

    .line 134
    .line 135
    const-string v1, "500"

    .line 136
    .line 137
    invoke-static {v2, v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    const/16 v2, 0xd

    .line 142
    .line 143
    aput-object v1, v0, v2

    .line 144
    .line 145
    const-string v1, "accept-charset"

    .line 146
    .line 147
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    const/16 v2, 0xe

    .line 152
    .line 153
    aput-object v1, v0, v2

    .line 154
    .line 155
    const-string v1, "accept-encoding"

    .line 156
    .line 157
    const-string v2, "gzip, deflate"

    .line 158
    .line 159
    invoke-static {v1, v2}, Lio/netty/handler/codec/http2/HpackStaticTable;->newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const/16 v2, 0xf

    .line 164
    .line 165
    aput-object v1, v0, v2

    .line 166
    .line 167
    const-string v1, "accept-language"

    .line 168
    .line 169
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const/16 v2, 0x10

    .line 174
    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    const-string v1, "accept-ranges"

    .line 178
    .line 179
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const/16 v2, 0x11

    .line 184
    .line 185
    aput-object v1, v0, v2

    .line 186
    .line 187
    const-string v1, "accept"

    .line 188
    .line 189
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    const/16 v2, 0x12

    .line 194
    .line 195
    aput-object v1, v0, v2

    .line 196
    .line 197
    const-string v1, "access-control-allow-origin"

    .line 198
    .line 199
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    const/16 v2, 0x13

    .line 204
    .line 205
    aput-object v1, v0, v2

    .line 206
    .line 207
    const-string v1, "age"

    .line 208
    .line 209
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    const/16 v2, 0x14

    .line 214
    .line 215
    aput-object v1, v0, v2

    .line 216
    .line 217
    const-string v1, "allow"

    .line 218
    .line 219
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 220
    .line 221
    .line 222
    move-result-object v1

    .line 223
    const/16 v2, 0x15

    .line 224
    .line 225
    aput-object v1, v0, v2

    .line 226
    .line 227
    const-string v1, "authorization"

    .line 228
    .line 229
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    const/16 v2, 0x16

    .line 234
    .line 235
    aput-object v1, v0, v2

    .line 236
    .line 237
    const-string v1, "cache-control"

    .line 238
    .line 239
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    const/16 v2, 0x17

    .line 244
    .line 245
    aput-object v1, v0, v2

    .line 246
    .line 247
    const-string v1, "content-disposition"

    .line 248
    .line 249
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    const/16 v2, 0x18

    .line 254
    .line 255
    aput-object v1, v0, v2

    .line 256
    .line 257
    const-string v1, "content-encoding"

    .line 258
    .line 259
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const/16 v2, 0x19

    .line 264
    .line 265
    aput-object v1, v0, v2

    .line 266
    .line 267
    const-string v1, "content-language"

    .line 268
    .line 269
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    const/16 v2, 0x1a

    .line 274
    .line 275
    aput-object v1, v0, v2

    .line 276
    .line 277
    const-string v1, "content-length"

    .line 278
    .line 279
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    const/16 v2, 0x1b

    .line 284
    .line 285
    aput-object v1, v0, v2

    .line 286
    .line 287
    const-string v1, "content-location"

    .line 288
    .line 289
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    const/16 v2, 0x1c

    .line 294
    .line 295
    aput-object v1, v0, v2

    .line 296
    .line 297
    const-string v1, "content-range"

    .line 298
    .line 299
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 300
    .line 301
    .line 302
    move-result-object v1

    .line 303
    const/16 v2, 0x1d

    .line 304
    .line 305
    aput-object v1, v0, v2

    .line 306
    .line 307
    const-string v1, "content-type"

    .line 308
    .line 309
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    const/16 v2, 0x1e

    .line 314
    .line 315
    aput-object v1, v0, v2

    .line 316
    .line 317
    const-string v1, "cookie"

    .line 318
    .line 319
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    const/16 v2, 0x1f

    .line 324
    .line 325
    aput-object v1, v0, v2

    .line 326
    .line 327
    const-string v1, "date"

    .line 328
    .line 329
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    const/16 v2, 0x20

    .line 334
    .line 335
    aput-object v1, v0, v2

    .line 336
    .line 337
    const-string v1, "etag"

    .line 338
    .line 339
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const/16 v2, 0x21

    .line 344
    .line 345
    aput-object v1, v0, v2

    .line 346
    .line 347
    const-string v1, "expect"

    .line 348
    .line 349
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    const/16 v2, 0x22

    .line 354
    .line 355
    aput-object v1, v0, v2

    .line 356
    .line 357
    const-string v1, "expires"

    .line 358
    .line 359
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    const/16 v2, 0x23

    .line 364
    .line 365
    aput-object v1, v0, v2

    .line 366
    .line 367
    const-string v1, "from"

    .line 368
    .line 369
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    const/16 v2, 0x24

    .line 374
    .line 375
    aput-object v1, v0, v2

    .line 376
    .line 377
    const-string v1, "host"

    .line 378
    .line 379
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    const/16 v2, 0x25

    .line 384
    .line 385
    aput-object v1, v0, v2

    .line 386
    .line 387
    const-string v1, "if-match"

    .line 388
    .line 389
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    const/16 v2, 0x26

    .line 394
    .line 395
    aput-object v1, v0, v2

    .line 396
    .line 397
    const-string v1, "if-modified-since"

    .line 398
    .line 399
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    const/16 v2, 0x27

    .line 404
    .line 405
    aput-object v1, v0, v2

    .line 406
    .line 407
    const-string v1, "if-none-match"

    .line 408
    .line 409
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 410
    .line 411
    .line 412
    move-result-object v1

    .line 413
    const/16 v2, 0x28

    .line 414
    .line 415
    aput-object v1, v0, v2

    .line 416
    .line 417
    const-string v1, "if-range"

    .line 418
    .line 419
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 420
    .line 421
    .line 422
    move-result-object v1

    .line 423
    const/16 v2, 0x29

    .line 424
    .line 425
    aput-object v1, v0, v2

    .line 426
    .line 427
    const-string v1, "if-unmodified-since"

    .line 428
    .line 429
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    const/16 v2, 0x2a

    .line 434
    .line 435
    aput-object v1, v0, v2

    .line 436
    .line 437
    const-string v1, "last-modified"

    .line 438
    .line 439
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    const/16 v2, 0x2b

    .line 444
    .line 445
    aput-object v1, v0, v2

    .line 446
    .line 447
    const-string v1, "link"

    .line 448
    .line 449
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 450
    .line 451
    .line 452
    move-result-object v1

    .line 453
    const/16 v2, 0x2c

    .line 454
    .line 455
    aput-object v1, v0, v2

    .line 456
    .line 457
    const-string v1, "location"

    .line 458
    .line 459
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    const/16 v2, 0x2d

    .line 464
    .line 465
    aput-object v1, v0, v2

    .line 466
    .line 467
    const-string v1, "max-forwards"

    .line 468
    .line 469
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 470
    .line 471
    .line 472
    move-result-object v1

    .line 473
    const/16 v2, 0x2e

    .line 474
    .line 475
    aput-object v1, v0, v2

    .line 476
    .line 477
    const-string v1, "proxy-authenticate"

    .line 478
    .line 479
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    const/16 v2, 0x2f

    .line 484
    .line 485
    aput-object v1, v0, v2

    .line 486
    .line 487
    const-string v1, "proxy-authorization"

    .line 488
    .line 489
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    const/16 v2, 0x30

    .line 494
    .line 495
    aput-object v1, v0, v2

    .line 496
    .line 497
    const-string v1, "range"

    .line 498
    .line 499
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 500
    .line 501
    .line 502
    move-result-object v1

    .line 503
    const/16 v2, 0x31

    .line 504
    .line 505
    aput-object v1, v0, v2

    .line 506
    .line 507
    const-string v1, "referer"

    .line 508
    .line 509
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    const/16 v2, 0x32

    .line 514
    .line 515
    aput-object v1, v0, v2

    .line 516
    .line 517
    const-string v1, "refresh"

    .line 518
    .line 519
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 520
    .line 521
    .line 522
    move-result-object v1

    .line 523
    const/16 v2, 0x33

    .line 524
    .line 525
    aput-object v1, v0, v2

    .line 526
    .line 527
    const-string v1, "retry-after"

    .line 528
    .line 529
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    const/16 v2, 0x34

    .line 534
    .line 535
    aput-object v1, v0, v2

    .line 536
    .line 537
    const-string v1, "server"

    .line 538
    .line 539
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    const/16 v2, 0x35

    .line 544
    .line 545
    aput-object v1, v0, v2

    .line 546
    .line 547
    const-string v1, "set-cookie"

    .line 548
    .line 549
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 550
    .line 551
    .line 552
    move-result-object v1

    .line 553
    const/16 v2, 0x36

    .line 554
    .line 555
    aput-object v1, v0, v2

    .line 556
    .line 557
    const-string v1, "strict-transport-security"

    .line 558
    .line 559
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    const/16 v2, 0x37

    .line 564
    .line 565
    aput-object v1, v0, v2

    .line 566
    .line 567
    const-string v1, "transfer-encoding"

    .line 568
    .line 569
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 570
    .line 571
    .line 572
    move-result-object v1

    .line 573
    const/16 v2, 0x38

    .line 574
    .line 575
    aput-object v1, v0, v2

    .line 576
    .line 577
    const-string v1, "user-agent"

    .line 578
    .line 579
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 580
    .line 581
    .line 582
    move-result-object v1

    .line 583
    const/16 v2, 0x39

    .line 584
    .line 585
    aput-object v1, v0, v2

    .line 586
    .line 587
    const-string v1, "vary"

    .line 588
    .line 589
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 590
    .line 591
    .line 592
    move-result-object v1

    .line 593
    const/16 v2, 0x3a

    .line 594
    .line 595
    aput-object v1, v0, v2

    .line 596
    .line 597
    const-string v1, "via"

    .line 598
    .line 599
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 600
    .line 601
    .line 602
    move-result-object v1

    .line 603
    const/16 v2, 0x3b

    .line 604
    .line 605
    aput-object v1, v0, v2

    .line 606
    .line 607
    const-string v1, "www-authenticate"

    .line 608
    .line 609
    invoke-static {v1}, Lio/netty/handler/codec/http2/HpackStaticTable;->newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 610
    .line 611
    .line 612
    move-result-object v1

    .line 613
    const/16 v2, 0x3c

    .line 614
    .line 615
    aput-object v1, v0, v2

    .line 616
    .line 617
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    sput-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    .line 622
    .line 623
    invoke-static {}, Lio/netty/handler/codec/http2/HpackStaticTable;->createMap()Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    sput-object v1, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_INDEX_BY_NAME:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 628
    .line 629
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 630
    .line 631
    .line 632
    move-result v0

    .line 633
    sput v0, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    .line 634
    .line 635
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static createMap()Lio/netty/handler/codec/http2/CharSequenceMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/netty/handler/codec/http2/CharSequenceMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-instance v1, Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {}, Lio/netty/handler/codec/UnsupportedValueConverter;->instance()Lio/netty/handler/codec/UnsupportedValueConverter;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-direct {v1, v2, v3, v0}, Lio/netty/handler/codec/http2/CharSequenceMap;-><init>(ZLio/netty/handler/codec/ValueConverter;I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v2, v2, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    .line 24
    .line 25
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v1, v2, v3}, Lio/netty/handler/codec/DefaultHeaders;->set(Ljava/lang/Object;Ljava/lang/Object;)Lio/netty/handler/codec/Headers;

    .line 30
    .line 31
    .line 32
    add-int/lit8 v0, v0, -0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-object v1
.end method

.method static getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_TABLE:Ljava/util/List;

    .line 2
    .line 3
    add-int/lit8 p0, p0, -0x1

    .line 4
    .line 5
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 10
    .line 11
    return-object p0
.end method

.method static getIndex(Ljava/lang/CharSequence;)I
    .locals 1

    .line 1
    sget-object v0, Lio/netty/handler/codec/http2/HpackStaticTable;->STATIC_INDEX_BY_NAME:Lio/netty/handler/codec/http2/CharSequenceMap;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/netty/handler/codec/DefaultHeaders;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Integer;

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    const/4 p0, -0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    return p0
.end method

.method static getIndexInsensitive(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .line 1
    invoke-static {p0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getIndex(Ljava/lang/CharSequence;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :goto_0
    sget v2, Lio/netty/handler/codec/http2/HpackStaticTable;->length:I

    .line 10
    .line 11
    if-gt v0, v2, :cond_2

    .line 12
    .line 13
    invoke-static {v0}, Lio/netty/handler/codec/http2/HpackStaticTable;->getEntry(I)Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, v2, Lio/netty/handler/codec/http2/HpackHeaderField;->name:Ljava/lang/CharSequence;

    .line 18
    .line 19
    invoke-static {p0, v3}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-object v2, v2, Lio/netty/handler/codec/http2/HpackHeaderField;->value:Ljava/lang/CharSequence;

    .line 26
    .line 27
    invoke-static {p1, v2}, Lio/netty/handler/codec/http2/HpackUtil;->equalsVariableTime(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    return v0

    .line 34
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return v1
.end method

.method private static newEmptyHeaderField(Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 2

    .line 1
    new-instance v0, Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 2
    .line 3
    invoke-static {p0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v1, Lio/netty/util/AsciiString;->EMPTY_STRING:Lio/netty/util/AsciiString;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method private static newHeaderField(Ljava/lang/String;Ljava/lang/String;)Lio/netty/handler/codec/http2/HpackHeaderField;
    .locals 1

    .line 1
    new-instance v0, Lio/netty/handler/codec/http2/HpackHeaderField;

    .line 2
    .line 3
    invoke-static {p0}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p1}, Lio/netty/util/AsciiString;->cached(Ljava/lang/String;)Lio/netty/util/AsciiString;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http2/HpackHeaderField;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method
