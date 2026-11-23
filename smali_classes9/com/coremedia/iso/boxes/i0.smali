.class public Lcom/coremedia/iso/boxes/i0;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# static fields
.field public static final G:Ljava/lang/String; = "mvhd"

.field private static final synthetic H:Lorg/aspectj/lang/c$b;

.field private static final synthetic I:Lorg/aspectj/lang/c$b;

.field private static final synthetic J:Lorg/aspectj/lang/c$b;

.field private static final synthetic K:Lorg/aspectj/lang/c$b;

.field private static final synthetic L:Lorg/aspectj/lang/c$b;

.field private static final synthetic L1:Lorg/aspectj/lang/c$b;

.field private static final synthetic M:Lorg/aspectj/lang/c$b;

.field private static final synthetic N:Lorg/aspectj/lang/c$b;

.field private static final synthetic O:Lorg/aspectj/lang/c$b;

.field private static final synthetic P:Lorg/aspectj/lang/c$b;

.field private static final synthetic Q:Lorg/aspectj/lang/c$b;

.field private static final synthetic R:Lorg/aspectj/lang/c$b;

.field private static final synthetic S:Lorg/aspectj/lang/c$b;

.field private static final synthetic T:Lorg/aspectj/lang/c$b;

.field private static final synthetic U:Lorg/aspectj/lang/c$b;

.field private static final synthetic V:Lorg/aspectj/lang/c$b;

.field private static final synthetic W:Lorg/aspectj/lang/c$b;

.field private static final synthetic X:Lorg/aspectj/lang/c$b;

.field private static final synthetic Y:Lorg/aspectj/lang/c$b;

.field private static final synthetic Z:Lorg/aspectj/lang/c$b;

.field private static final synthetic b1:Lorg/aspectj/lang/c$b;

.field private static final synthetic f1:Lorg/aspectj/lang/c$b;

.field private static final synthetic i1:Lorg/aspectj/lang/c$b;

.field private static final synthetic l1:Lorg/aspectj/lang/c$b;

.field private static final synthetic p0:Lorg/aspectj/lang/c$b;

.field private static final synthetic p1:Lorg/aspectj/lang/c$b;

.field private static final synthetic q1:Lorg/aspectj/lang/c$b;

.field private static final synthetic r1:Lorg/aspectj/lang/c$b;

.field private static final synthetic v1:Lorg/aspectj/lang/c$b;


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private s:Ljava/util/Date;

.field private t:Ljava/util/Date;

.field private u:J

.field private v:J

.field private w:D

.field private x:F

.field private y:Lcom/googlecode/mp4parser/util/l;

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/i0;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "mvhd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->w:D

    .line 9
    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    .line 12
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->x:F

    .line 13
    .line 14
    sget-object v0, Lcom/googlecode/mp4parser/util/l;->j:Lcom/googlecode/mp4parser/util/l;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/coremedia/iso/boxes/i0;->y:Lcom/googlecode/mp4parser/util/l;

    .line 17
    .line 18
    return-void
.end method

.method private static synthetic s()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "MovieHeaderBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/coremedia/iso/boxes/i0;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "getCreationTime"

    .line 13
    .line 14
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 15
    .line 16
    const-string v4, ""

    .line 17
    .line 18
    const-string v5, ""

    .line 19
    .line 20
    const-string v6, ""

    .line 21
    .line 22
    const-string v7, "java.util.Date"

    .line 23
    .line 24
    move-object v0, v8

    .line 25
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/16 v1, 0x3f

    .line 30
    .line 31
    const-string v9, "method-execution"

    .line 32
    .line 33
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->H:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "getModificationTime"

    .line 42
    .line 43
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 44
    .line 45
    const-string v4, ""

    .line 46
    .line 47
    const-string v5, ""

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    const-string v7, "java.util.Date"

    .line 52
    .line 53
    move-object v0, v8

    .line 54
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    const/16 v1, 0x43

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->I:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "setModificationTime"

    .line 69
    .line 70
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 71
    .line 72
    const-string v4, "java.util.Date"

    .line 73
    .line 74
    const-string v5, "modificationTime"

    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    const-string v7, "void"

    .line 79
    .line 80
    move-object v0, v8

    .line 81
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/16 v1, 0xcb

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->R:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    const-string v1, "1"

    .line 94
    .line 95
    const-string v2, "setTimescale"

    .line 96
    .line 97
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 98
    .line 99
    const-string v4, "long"

    .line 100
    .line 101
    const-string v5, "timescale"

    .line 102
    .line 103
    const-string v6, ""

    .line 104
    .line 105
    const-string v7, "void"

    .line 106
    .line 107
    move-object v0, v8

    .line 108
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    const/16 v1, 0xd3

    .line 113
    .line 114
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->S:Lorg/aspectj/lang/c$b;

    .line 119
    .line 120
    const-string v1, "1"

    .line 121
    .line 122
    const-string v2, "setDuration"

    .line 123
    .line 124
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 125
    .line 126
    const-string v4, "long"

    .line 127
    .line 128
    const-string v5, "duration"

    .line 129
    .line 130
    const-string v6, ""

    .line 131
    .line 132
    const-string v7, "void"

    .line 133
    .line 134
    move-object v0, v8

    .line 135
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const/16 v1, 0xd7

    .line 140
    .line 141
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->T:Lorg/aspectj/lang/c$b;

    .line 146
    .line 147
    const-string v1, "1"

    .line 148
    .line 149
    const-string v2, "setRate"

    .line 150
    .line 151
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 152
    .line 153
    const-string v4, "double"

    .line 154
    .line 155
    const-string v5, "rate"

    .line 156
    .line 157
    const-string v6, ""

    .line 158
    .line 159
    const-string v7, "void"

    .line 160
    .line 161
    move-object v0, v8

    .line 162
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const/16 v1, 0xde

    .line 167
    .line 168
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->U:Lorg/aspectj/lang/c$b;

    .line 173
    .line 174
    const-string v1, "1"

    .line 175
    .line 176
    const-string v2, "setVolume"

    .line 177
    .line 178
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 179
    .line 180
    const-string v4, "float"

    .line 181
    .line 182
    const-string v5, "volume"

    .line 183
    .line 184
    const-string v6, ""

    .line 185
    .line 186
    const-string v7, "void"

    .line 187
    .line 188
    move-object v0, v8

    .line 189
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const/16 v1, 0xe2

    .line 194
    .line 195
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->V:Lorg/aspectj/lang/c$b;

    .line 200
    .line 201
    const-string v1, "1"

    .line 202
    .line 203
    const-string v2, "setMatrix"

    .line 204
    .line 205
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 206
    .line 207
    const-string v4, "com.googlecode.mp4parser.util.Matrix"

    .line 208
    .line 209
    const-string v5, "matrix"

    .line 210
    .line 211
    const-string v6, ""

    .line 212
    .line 213
    const-string v7, "void"

    .line 214
    .line 215
    move-object v0, v8

    .line 216
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    const/16 v1, 0xe6

    .line 221
    .line 222
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->W:Lorg/aspectj/lang/c$b;

    .line 227
    .line 228
    const-string v1, "1"

    .line 229
    .line 230
    const-string v2, "setNextTrackId"

    .line 231
    .line 232
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 233
    .line 234
    const-string v4, "long"

    .line 235
    .line 236
    const-string v5, "nextTrackId"

    .line 237
    .line 238
    const-string v6, ""

    .line 239
    .line 240
    const-string v7, "void"

    .line 241
    .line 242
    move-object v0, v8

    .line 243
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    const/16 v1, 0xea

    .line 248
    .line 249
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->X:Lorg/aspectj/lang/c$b;

    .line 254
    .line 255
    const-string v1, "1"

    .line 256
    .line 257
    const-string v2, "getPreviewTime"

    .line 258
    .line 259
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 260
    .line 261
    const-string v4, ""

    .line 262
    .line 263
    const-string v5, ""

    .line 264
    .line 265
    const-string v6, ""

    .line 266
    .line 267
    const-string v7, "int"

    .line 268
    .line 269
    move-object v0, v8

    .line 270
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    const/16 v1, 0xee

    .line 275
    .line 276
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->Y:Lorg/aspectj/lang/c$b;

    .line 281
    .line 282
    const-string v1, "1"

    .line 283
    .line 284
    const-string v2, "setPreviewTime"

    .line 285
    .line 286
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 287
    .line 288
    const-string v4, "int"

    .line 289
    .line 290
    const-string v5, "previewTime"

    .line 291
    .line 292
    const-string v6, ""

    .line 293
    .line 294
    const-string v7, "void"

    .line 295
    .line 296
    move-object v0, v8

    .line 297
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    const/16 v1, 0xf2

    .line 302
    .line 303
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->Z:Lorg/aspectj/lang/c$b;

    .line 308
    .line 309
    const-string v1, "1"

    .line 310
    .line 311
    const-string v2, "getPreviewDuration"

    .line 312
    .line 313
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 314
    .line 315
    const-string v4, ""

    .line 316
    .line 317
    const-string v5, ""

    .line 318
    .line 319
    const-string v6, ""

    .line 320
    .line 321
    const-string v7, "int"

    .line 322
    .line 323
    move-object v0, v8

    .line 324
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    const/16 v1, 0xf6

    .line 329
    .line 330
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->p0:Lorg/aspectj/lang/c$b;

    .line 335
    .line 336
    const-string v1, "1"

    .line 337
    .line 338
    const-string v2, "getTimescale"

    .line 339
    .line 340
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 341
    .line 342
    const-string v4, ""

    .line 343
    .line 344
    const-string v5, ""

    .line 345
    .line 346
    const-string v6, ""

    .line 347
    .line 348
    const-string v7, "long"

    .line 349
    .line 350
    move-object v0, v8

    .line 351
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    const/16 v1, 0x47

    .line 356
    .line 357
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->J:Lorg/aspectj/lang/c$b;

    .line 362
    .line 363
    const-string v1, "1"

    .line 364
    .line 365
    const-string v2, "setPreviewDuration"

    .line 366
    .line 367
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 368
    .line 369
    const-string v4, "int"

    .line 370
    .line 371
    const-string v5, "previewDuration"

    .line 372
    .line 373
    const-string v6, ""

    .line 374
    .line 375
    const-string v7, "void"

    .line 376
    .line 377
    move-object v0, v8

    .line 378
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    const/16 v1, 0xfa

    .line 383
    .line 384
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->b1:Lorg/aspectj/lang/c$b;

    .line 389
    .line 390
    const-string v1, "1"

    .line 391
    .line 392
    const-string v2, "getPosterTime"

    .line 393
    .line 394
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 395
    .line 396
    const-string v4, ""

    .line 397
    .line 398
    const-string v5, ""

    .line 399
    .line 400
    const-string v6, ""

    .line 401
    .line 402
    const-string v7, "int"

    .line 403
    .line 404
    move-object v0, v8

    .line 405
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    const/16 v1, 0xfe

    .line 410
    .line 411
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->f1:Lorg/aspectj/lang/c$b;

    .line 416
    .line 417
    const-string v1, "1"

    .line 418
    .line 419
    const-string v2, "setPosterTime"

    .line 420
    .line 421
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 422
    .line 423
    const-string v4, "int"

    .line 424
    .line 425
    const-string v5, "posterTime"

    .line 426
    .line 427
    const-string v6, ""

    .line 428
    .line 429
    const-string v7, "void"

    .line 430
    .line 431
    move-object v0, v8

    .line 432
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 433
    .line 434
    .line 435
    move-result-object v0

    .line 436
    const/16 v1, 0x102

    .line 437
    .line 438
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->i1:Lorg/aspectj/lang/c$b;

    .line 443
    .line 444
    const-string v1, "1"

    .line 445
    .line 446
    const-string v2, "getSelectionTime"

    .line 447
    .line 448
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 449
    .line 450
    const-string v4, ""

    .line 451
    .line 452
    const-string v5, ""

    .line 453
    .line 454
    const-string v6, ""

    .line 455
    .line 456
    const-string v7, "int"

    .line 457
    .line 458
    move-object v0, v8

    .line 459
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    const/16 v1, 0x106

    .line 464
    .line 465
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->l1:Lorg/aspectj/lang/c$b;

    .line 470
    .line 471
    const-string v1, "1"

    .line 472
    .line 473
    const-string v2, "setSelectionTime"

    .line 474
    .line 475
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 476
    .line 477
    const-string v4, "int"

    .line 478
    .line 479
    const-string v5, "selectionTime"

    .line 480
    .line 481
    const-string v6, ""

    .line 482
    .line 483
    const-string v7, "void"

    .line 484
    .line 485
    move-object v0, v8

    .line 486
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    const/16 v1, 0x10a

    .line 491
    .line 492
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->p1:Lorg/aspectj/lang/c$b;

    .line 497
    .line 498
    const-string v1, "1"

    .line 499
    .line 500
    const-string v2, "getSelectionDuration"

    .line 501
    .line 502
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 503
    .line 504
    const-string v4, ""

    .line 505
    .line 506
    const-string v5, ""

    .line 507
    .line 508
    const-string v6, ""

    .line 509
    .line 510
    const-string v7, "int"

    .line 511
    .line 512
    move-object v0, v8

    .line 513
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 514
    .line 515
    .line 516
    move-result-object v0

    .line 517
    const/16 v1, 0x10e

    .line 518
    .line 519
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->q1:Lorg/aspectj/lang/c$b;

    .line 524
    .line 525
    const-string v1, "1"

    .line 526
    .line 527
    const-string v2, "setSelectionDuration"

    .line 528
    .line 529
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 530
    .line 531
    const-string v4, "int"

    .line 532
    .line 533
    const-string v5, "selectionDuration"

    .line 534
    .line 535
    const-string v6, ""

    .line 536
    .line 537
    const-string v7, "void"

    .line 538
    .line 539
    move-object v0, v8

    .line 540
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 541
    .line 542
    .line 543
    move-result-object v0

    .line 544
    const/16 v1, 0x112

    .line 545
    .line 546
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->r1:Lorg/aspectj/lang/c$b;

    .line 551
    .line 552
    const-string v1, "1"

    .line 553
    .line 554
    const-string v2, "getCurrentTime"

    .line 555
    .line 556
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 557
    .line 558
    const-string v4, ""

    .line 559
    .line 560
    const-string v5, ""

    .line 561
    .line 562
    const-string v6, ""

    .line 563
    .line 564
    const-string v7, "int"

    .line 565
    .line 566
    move-object v0, v8

    .line 567
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 568
    .line 569
    .line 570
    move-result-object v0

    .line 571
    const/16 v1, 0x116

    .line 572
    .line 573
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->v1:Lorg/aspectj/lang/c$b;

    .line 578
    .line 579
    const-string v1, "1"

    .line 580
    .line 581
    const-string v2, "setCurrentTime"

    .line 582
    .line 583
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 584
    .line 585
    const-string v4, "int"

    .line 586
    .line 587
    const-string v5, "currentTime"

    .line 588
    .line 589
    const-string v6, ""

    .line 590
    .line 591
    const-string v7, "void"

    .line 592
    .line 593
    move-object v0, v8

    .line 594
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 595
    .line 596
    .line 597
    move-result-object v0

    .line 598
    const/16 v1, 0x11a

    .line 599
    .line 600
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->L1:Lorg/aspectj/lang/c$b;

    .line 605
    .line 606
    const-string v1, "1"

    .line 607
    .line 608
    const-string v2, "getDuration"

    .line 609
    .line 610
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 611
    .line 612
    const-string v4, ""

    .line 613
    .line 614
    const-string v5, ""

    .line 615
    .line 616
    const-string v6, ""

    .line 617
    .line 618
    const-string v7, "long"

    .line 619
    .line 620
    move-object v0, v8

    .line 621
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    const/16 v1, 0x4b

    .line 626
    .line 627
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->K:Lorg/aspectj/lang/c$b;

    .line 632
    .line 633
    const-string v1, "1"

    .line 634
    .line 635
    const-string v2, "getRate"

    .line 636
    .line 637
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 638
    .line 639
    const-string v4, ""

    .line 640
    .line 641
    const-string v5, ""

    .line 642
    .line 643
    const-string v6, ""

    .line 644
    .line 645
    const-string v7, "double"

    .line 646
    .line 647
    move-object v0, v8

    .line 648
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    const/16 v1, 0x4f

    .line 653
    .line 654
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->L:Lorg/aspectj/lang/c$b;

    .line 659
    .line 660
    const-string v1, "1"

    .line 661
    .line 662
    const-string v2, "getVolume"

    .line 663
    .line 664
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 665
    .line 666
    const-string v4, ""

    .line 667
    .line 668
    const-string v5, ""

    .line 669
    .line 670
    const-string v6, ""

    .line 671
    .line 672
    const-string v7, "float"

    .line 673
    .line 674
    move-object v0, v8

    .line 675
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 676
    .line 677
    .line 678
    move-result-object v0

    .line 679
    const/16 v1, 0x53

    .line 680
    .line 681
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 682
    .line 683
    .line 684
    move-result-object v0

    .line 685
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->M:Lorg/aspectj/lang/c$b;

    .line 686
    .line 687
    const-string v1, "1"

    .line 688
    .line 689
    const-string v2, "getMatrix"

    .line 690
    .line 691
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 692
    .line 693
    const-string v4, ""

    .line 694
    .line 695
    const-string v5, ""

    .line 696
    .line 697
    const-string v6, ""

    .line 698
    .line 699
    const-string v7, "com.googlecode.mp4parser.util.Matrix"

    .line 700
    .line 701
    move-object v0, v8

    .line 702
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 703
    .line 704
    .line 705
    move-result-object v0

    .line 706
    const/16 v1, 0x57

    .line 707
    .line 708
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->N:Lorg/aspectj/lang/c$b;

    .line 713
    .line 714
    const-string v1, "1"

    .line 715
    .line 716
    const-string v2, "getNextTrackId"

    .line 717
    .line 718
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 719
    .line 720
    const-string v4, ""

    .line 721
    .line 722
    const-string v5, ""

    .line 723
    .line 724
    const-string v6, ""

    .line 725
    .line 726
    const-string v7, "long"

    .line 727
    .line 728
    move-object v0, v8

    .line 729
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    const/16 v1, 0x5b

    .line 734
    .line 735
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 736
    .line 737
    .line 738
    move-result-object v0

    .line 739
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->O:Lorg/aspectj/lang/c$b;

    .line 740
    .line 741
    const-string v1, "1"

    .line 742
    .line 743
    const-string v2, "toString"

    .line 744
    .line 745
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 746
    .line 747
    const-string v4, ""

    .line 748
    .line 749
    const-string v5, ""

    .line 750
    .line 751
    const-string v6, ""

    .line 752
    .line 753
    const-string v7, "java.lang.String"

    .line 754
    .line 755
    move-object v0, v8

    .line 756
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 757
    .line 758
    .line 759
    move-result-object v0

    .line 760
    const/16 v1, 0x8b

    .line 761
    .line 762
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 763
    .line 764
    .line 765
    move-result-object v0

    .line 766
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->P:Lorg/aspectj/lang/c$b;

    .line 767
    .line 768
    const-string v1, "1"

    .line 769
    .line 770
    const-string v2, "setCreationTime"

    .line 771
    .line 772
    const-string v3, "com.coremedia.iso.boxes.MovieHeaderBox"

    .line 773
    .line 774
    const-string v4, "java.util.Date"

    .line 775
    .line 776
    const-string v5, "creationTime"

    .line 777
    .line 778
    const-string v6, ""

    .line 779
    .line 780
    const-string v7, "void"

    .line 781
    .line 782
    move-object v0, v8

    .line 783
    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/e;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lad/t;

    .line 784
    .line 785
    .line 786
    move-result-object v0

    .line 787
    const/16 v1, 0xc3

    .line 788
    .line 789
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 790
    .line 791
    .line 792
    move-result-object v0

    .line 793
    sput-object v0, Lcom/coremedia/iso/boxes/i0;->Q:Lorg/aspectj/lang/c$b;

    .line 794
    .line 795
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->O:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->z:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public B()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->f1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->C:I

    .line 15
    .line 16
    return v0
.end method

.method public C()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->p0:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->B:I

    .line 15
    .line 16
    return v0
.end method

.method public D()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->Y:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->A:I

    .line 15
    .line 16
    return v0
.end method

.method public E()D
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->L:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->w:D

    .line 15
    .line 16
    return-wide v0
.end method

.method public F()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->q1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->E:I

    .line 15
    .line 16
    return v0
.end method

.method public G()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->l1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->D:I

    .line 15
    .line 16
    return v0
.end method

.method public H()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->J:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->u:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public I()F
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->M:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->x:F

    .line 15
    .line 16
    return v0
.end method

.method public J(Ljava/util/Date;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->Q:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/coremedia/iso/boxes/i0;->s:Ljava/util/Date;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/googlecode/mp4parser/util/e;->a(Ljava/util/Date;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0x100000000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public K(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->L1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->F:I

    .line 19
    .line 20
    return-void
.end method

.method public L(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->T:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/e;->m(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/i0;->v:J

    .line 19
    .line 20
    const-wide v0, 0x100000000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long v2, p1, v0

    .line 26
    .line 27
    if-ltz v2, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public M(Lcom/googlecode/mp4parser/util/l;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->W:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/coremedia/iso/boxes/i0;->y:Lcom/googlecode/mp4parser/util/l;

    .line 15
    .line 16
    return-void
.end method

.method public N(Ljava/util/Date;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->R:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0, p1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/coremedia/iso/boxes/i0;->t:Ljava/util/Date;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/googlecode/mp4parser/util/e;->a(Ljava/util/Date;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    const-wide v2, 0x100000000L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    cmp-long p1, v0, v2

    .line 26
    .line 27
    if-ltz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method

.method public O(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->X:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/e;->m(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/i0;->z:J

    .line 19
    .line 20
    return-void
.end method

.method public P(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->i1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->C:I

    .line 19
    .line 20
    return-void
.end method

.method public Q(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->b1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->B:I

    .line 19
    .line 20
    return-void
.end method

.method public R(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->Z:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->A:I

    .line 19
    .line 20
    return-void
.end method

.method public S(D)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->U:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/e;->g(D)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/i0;->w:D

    .line 19
    .line 20
    return-void
.end method

.method public T(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->r1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->E:I

    .line 19
    .line 20
    return-void
.end method

.method public U(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->p1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->k(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->D:I

    .line 19
    .line 20
    return-void
.end method

.method public V(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->S:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1, p2}, Lorg/aspectj/runtime/internal/e;->m(J)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/i0;->u:J

    .line 19
    .line 20
    return-void
.end method

.method public W(F)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->V:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->i(F)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, p0, p0, v1}, Lorg/aspectj/runtime/reflect/e;->w(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 16
    .line 17
    .line 18
    iput p1, p0, Lcom/coremedia/iso/boxes/i0;->x:F

    .line 19
    .line 20
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->t(Ljava/nio/ByteBuffer;)J

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {p1}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/e;->b(J)Ljava/util/Date;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/coremedia/iso/boxes/i0;->s:Ljava/util/Date;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/e;->b(J)Ljava/util/Date;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/coremedia/iso/boxes/i0;->t:Ljava/util/Date;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->u:J

    .line 36
    .line 37
    invoke-static {p1}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->v:J

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/e;->b(J)Ljava/util/Date;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Lcom/coremedia/iso/boxes/i0;->s:Ljava/util/Date;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v0

    .line 58
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/e;->b(J)Ljava/util/Date;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/coremedia/iso/boxes/i0;->t:Ljava/util/Date;

    .line 63
    .line 64
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->u:J

    .line 69
    .line 70
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v0

    .line 74
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->v:J

    .line 75
    .line 76
    :goto_0
    invoke-static {p1}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->w:D

    .line 81
    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/g;->e(Ljava/nio/ByteBuffer;)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->x:F

    .line 87
    .line 88
    invoke-static {p1}, Lcom/coremedia/iso/g;->i(Ljava/nio/ByteBuffer;)I

    .line 89
    .line 90
    .line 91
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 92
    .line 93
    .line 94
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/googlecode/mp4parser/util/l;->a(Ljava/nio/ByteBuffer;)Lcom/googlecode/mp4parser/util/l;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lcom/coremedia/iso/boxes/i0;->y:Lcom/googlecode/mp4parser/util/l;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->A:I

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->B:I

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->C:I

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->D:I

    .line 126
    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->E:I

    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    iput v0, p0, Lcom/coremedia/iso/boxes/i0;->F:I

    .line 138
    .line 139
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 140
    .line 141
    .line 142
    move-result-wide v0

    .line 143
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->z:J

    .line 144
    .line 145
    return-void
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->s:Ljava/util/Date;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/googlecode/mp4parser/util/e;->a(Ljava/util/Date;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->t:Ljava/util/Date;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/googlecode/mp4parser/util/e;->a(Ljava/util/Date;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 27
    .line 28
    .line 29
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->u:J

    .line 30
    .line 31
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 32
    .line 33
    .line 34
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->v:J

    .line 35
    .line 36
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->s:Ljava/util/Date;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/googlecode/mp4parser/util/e;->a(Ljava/util/Date;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->t:Ljava/util/Date;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/googlecode/mp4parser/util/e;->a(Ljava/util/Date;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 56
    .line 57
    .line 58
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->u:J

    .line 59
    .line 60
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 61
    .line 62
    .line 63
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->v:J

    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->w:D

    .line 69
    .line 70
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->b(Ljava/nio/ByteBuffer;D)V

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->x:F

    .line 74
    .line 75
    float-to-double v0, v0

    .line 76
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->c(Ljava/nio/ByteBuffer;D)V

    .line 77
    .line 78
    .line 79
    const/4 v0, 0x0

    .line 80
    invoke-static {p1, v0}, Lcom/coremedia/iso/i;->f(Ljava/nio/ByteBuffer;I)V

    .line 81
    .line 82
    .line 83
    const-wide/16 v0, 0x0

    .line 84
    .line 85
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->y:Lcom/googlecode/mp4parser/util/l;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/util/l;->c(Ljava/nio/ByteBuffer;)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->A:I

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->B:I

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->C:I

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 109
    .line 110
    .line 111
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->D:I

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 114
    .line 115
    .line 116
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->E:I

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->F:I

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 124
    .line 125
    .line 126
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->z:J

    .line 127
    .line 128
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method protected g()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const-wide/16 v0, 0x20

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const-wide/16 v0, 0x14

    .line 12
    .line 13
    :goto_0
    const-wide/16 v2, 0x50

    .line 14
    .line 15
    add-long/2addr v0, v2

    .line 16
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->P:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "MovieHeaderBox["

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "creationTime="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->v()Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ";"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, "modificationTime="

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->z()Ljava/util/Date;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, "timescale="

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->H()J

    .line 62
    .line 63
    .line 64
    move-result-wide v2

    .line 65
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v2, "duration="

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->x()J

    .line 77
    .line 78
    .line 79
    move-result-wide v2

    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v2, "rate="

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->E()D

    .line 92
    .line 93
    .line 94
    move-result-wide v2

    .line 95
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v2, "volume="

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->I()F

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v2, "matrix="

    .line 117
    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/coremedia/iso/boxes/i0;->y:Lcom/googlecode/mp4parser/util/l;

    .line 122
    .line 123
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v1, "nextTrackId="

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/i0;->A()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v1, "]"

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    return-object v0
.end method

.method public v()Ljava/util/Date;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->H:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->s:Ljava/util/Date;

    .line 15
    .line 16
    return-object v0
.end method

.method public w()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->v1:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/coremedia/iso/boxes/i0;->F:I

    .line 15
    .line 16
    return v0
.end method

.method public x()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->K:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/i0;->v:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public y()Lcom/googlecode/mp4parser/util/l;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->N:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->y:Lcom/googlecode/mp4parser/util/l;

    .line 15
    .line 16
    return-object v0
.end method

.method public z()Ljava/util/Date;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/i0;->I:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {v0, p0, p0}, Lorg/aspectj/runtime/reflect/e;->v(Lorg/aspectj/lang/c$b;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/googlecode/mp4parser/j;->b()Lcom/googlecode/mp4parser/j;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/j;->c(Lorg/aspectj/lang/c;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/i0;->t:Ljava/util/Date;

    .line 15
    .line 16
    return-object v0
.end method
