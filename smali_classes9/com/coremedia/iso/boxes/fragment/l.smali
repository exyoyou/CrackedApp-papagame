.class public Lcom/coremedia/iso/boxes/fragment/l;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String; = "tfhd"

.field private static final synthetic B:Lorg/aspectj/lang/c$b;

.field private static final synthetic C:Lorg/aspectj/lang/c$b;

.field private static final synthetic D:Lorg/aspectj/lang/c$b;

.field private static final synthetic E:Lorg/aspectj/lang/c$b;

.field private static final synthetic F:Lorg/aspectj/lang/c$b;

.field private static final synthetic G:Lorg/aspectj/lang/c$b;

.field private static final synthetic H:Lorg/aspectj/lang/c$b;

.field private static final synthetic I:Lorg/aspectj/lang/c$b;

.field private static final synthetic J:Lorg/aspectj/lang/c$b;

.field private static final synthetic K:Lorg/aspectj/lang/c$b;

.field private static final synthetic L:Lorg/aspectj/lang/c$b;

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


# instance fields
.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Lcom/coremedia/iso/boxes/fragment/g;

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/fragment/l;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "tfhd"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->t:J

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->v:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->w:J

    .line 13
    .line 14
    return-void
.end method

.method private static synthetic s()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "TrackFragmentHeaderBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/coremedia/iso/boxes/fragment/l;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "hasBaseDataOffset"

    .line 13
    .line 14
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0x7e

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
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->B:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "hasSampleDescriptionIndex"

    .line 42
    .line 43
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0x82

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->C:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "getDefaultSampleFlags"

    .line 69
    .line 70
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 71
    .line 72
    const-string v4, ""

    .line 73
    .line 74
    const-string v5, ""

    .line 75
    .line 76
    const-string v6, ""

    .line 77
    .line 78
    const-string v7, "com.coremedia.iso.boxes.fragment.SampleFlags"

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
    const/16 v1, 0xa6

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->L:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    const-string v1, "1"

    .line 94
    .line 95
    const-string v2, "isDurationIsEmpty"

    .line 96
    .line 97
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 98
    .line 99
    const-string v4, ""

    .line 100
    .line 101
    const-string v5, ""

    .line 102
    .line 103
    const-string v6, ""

    .line 104
    .line 105
    const-string v7, "boolean"

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
    const/16 v1, 0xaa

    .line 113
    .line 114
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->M:Lorg/aspectj/lang/c$b;

    .line 119
    .line 120
    const-string v1, "1"

    .line 121
    .line 122
    const-string v2, "isDefaultBaseIsMoof"

    .line 123
    .line 124
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 125
    .line 126
    const-string v4, ""

    .line 127
    .line 128
    const-string v5, ""

    .line 129
    .line 130
    const-string v6, ""

    .line 131
    .line 132
    const-string v7, "boolean"

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
    const/16 v1, 0xae

    .line 140
    .line 141
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->N:Lorg/aspectj/lang/c$b;

    .line 146
    .line 147
    const-string v1, "1"

    .line 148
    .line 149
    const-string v2, "setTrackId"

    .line 150
    .line 151
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 152
    .line 153
    const-string v4, "long"

    .line 154
    .line 155
    const-string v5, "trackId"

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
    const/16 v1, 0xb2

    .line 167
    .line 168
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->O:Lorg/aspectj/lang/c$b;

    .line 173
    .line 174
    const-string v1, "1"

    .line 175
    .line 176
    const-string v2, "setBaseDataOffset"

    .line 177
    .line 178
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 179
    .line 180
    const-string v4, "long"

    .line 181
    .line 182
    const-string v5, "baseDataOffset"

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
    const/16 v1, 0xb6

    .line 194
    .line 195
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->P:Lorg/aspectj/lang/c$b;

    .line 200
    .line 201
    const-string v1, "1"

    .line 202
    .line 203
    const-string v2, "setSampleDescriptionIndex"

    .line 204
    .line 205
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 206
    .line 207
    const-string v4, "long"

    .line 208
    .line 209
    const-string v5, "sampleDescriptionIndex"

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
    const/16 v1, 0xbf

    .line 221
    .line 222
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->Q:Lorg/aspectj/lang/c$b;

    .line 227
    .line 228
    const-string v1, "1"

    .line 229
    .line 230
    const-string v2, "setDefaultSampleDuration"

    .line 231
    .line 232
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 233
    .line 234
    const-string v4, "long"

    .line 235
    .line 236
    const-string v5, "defaultSampleDuration"

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
    const/16 v1, 0xc8

    .line 248
    .line 249
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->R:Lorg/aspectj/lang/c$b;

    .line 254
    .line 255
    const-string v1, "1"

    .line 256
    .line 257
    const-string v2, "setDefaultSampleSize"

    .line 258
    .line 259
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 260
    .line 261
    const-string v4, "long"

    .line 262
    .line 263
    const-string v5, "defaultSampleSize"

    .line 264
    .line 265
    const-string v6, ""

    .line 266
    .line 267
    const-string v7, "void"

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
    const/16 v1, 0xcd

    .line 275
    .line 276
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->S:Lorg/aspectj/lang/c$b;

    .line 281
    .line 282
    const-string v1, "1"

    .line 283
    .line 284
    const-string v2, "setDefaultSampleFlags"

    .line 285
    .line 286
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 287
    .line 288
    const-string v4, "com.coremedia.iso.boxes.fragment.SampleFlags"

    .line 289
    .line 290
    const-string v5, "defaultSampleFlags"

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
    const/16 v1, 0xd2

    .line 302
    .line 303
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->T:Lorg/aspectj/lang/c$b;

    .line 308
    .line 309
    const-string v1, "1"

    .line 310
    .line 311
    const-string v2, "setDurationIsEmpty"

    .line 312
    .line 313
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 314
    .line 315
    const-string v4, "boolean"

    .line 316
    .line 317
    const-string v5, "durationIsEmpty"

    .line 318
    .line 319
    const-string v6, ""

    .line 320
    .line 321
    const-string v7, "void"

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
    const/16 v1, 0xd7

    .line 329
    .line 330
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->U:Lorg/aspectj/lang/c$b;

    .line 335
    .line 336
    const-string v1, "1"

    .line 337
    .line 338
    const-string v2, "hasDefaultSampleDuration"

    .line 339
    .line 340
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0x86

    .line 356
    .line 357
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->D:Lorg/aspectj/lang/c$b;

    .line 362
    .line 363
    const-string v1, "1"

    .line 364
    .line 365
    const-string v2, "setDefaultBaseIsMoof"

    .line 366
    .line 367
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 368
    .line 369
    const-string v4, "boolean"

    .line 370
    .line 371
    const-string v5, "defaultBaseIsMoof"

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
    const/16 v1, 0xdc

    .line 383
    .line 384
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->V:Lorg/aspectj/lang/c$b;

    .line 389
    .line 390
    const-string v1, "1"

    .line 391
    .line 392
    const-string v2, "toString"

    .line 393
    .line 394
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "java.lang.String"

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
    const/16 v1, 0xe2

    .line 410
    .line 411
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->W:Lorg/aspectj/lang/c$b;

    .line 416
    .line 417
    const-string v1, "1"

    .line 418
    .line 419
    const-string v2, "hasDefaultSampleSize"

    .line 420
    .line 421
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 422
    .line 423
    const-string v4, ""

    .line 424
    .line 425
    const-string v5, ""

    .line 426
    .line 427
    const-string v6, ""

    .line 428
    .line 429
    const-string v7, "boolean"

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
    const/16 v1, 0x8a

    .line 437
    .line 438
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->E:Lorg/aspectj/lang/c$b;

    .line 443
    .line 444
    const-string v1, "1"

    .line 445
    .line 446
    const-string v2, "hasDefaultSampleFlags"

    .line 447
    .line 448
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0x8e

    .line 464
    .line 465
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->F:Lorg/aspectj/lang/c$b;

    .line 470
    .line 471
    const-string v1, "1"

    .line 472
    .line 473
    const-string v2, "getTrackId"

    .line 474
    .line 475
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 476
    .line 477
    const-string v4, ""

    .line 478
    .line 479
    const-string v5, ""

    .line 480
    .line 481
    const-string v6, ""

    .line 482
    .line 483
    const-string v7, "long"

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
    const/16 v1, 0x92

    .line 491
    .line 492
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->G:Lorg/aspectj/lang/c$b;

    .line 497
    .line 498
    const-string v1, "1"

    .line 499
    .line 500
    const-string v2, "getBaseDataOffset"

    .line 501
    .line 502
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "long"

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
    const/16 v1, 0x96

    .line 518
    .line 519
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->H:Lorg/aspectj/lang/c$b;

    .line 524
    .line 525
    const-string v1, "1"

    .line 526
    .line 527
    const-string v2, "getSampleDescriptionIndex"

    .line 528
    .line 529
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 530
    .line 531
    const-string v4, ""

    .line 532
    .line 533
    const-string v5, ""

    .line 534
    .line 535
    const-string v6, ""

    .line 536
    .line 537
    const-string v7, "long"

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
    const/16 v1, 0x9a

    .line 545
    .line 546
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->I:Lorg/aspectj/lang/c$b;

    .line 551
    .line 552
    const-string v1, "1"

    .line 553
    .line 554
    const-string v2, "getDefaultSampleDuration"

    .line 555
    .line 556
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

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
    const-string v7, "long"

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
    const/16 v1, 0x9e

    .line 572
    .line 573
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->J:Lorg/aspectj/lang/c$b;

    .line 578
    .line 579
    const-string v1, "1"

    .line 580
    .line 581
    const-string v2, "getDefaultSampleSize"

    .line 582
    .line 583
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentHeaderBox"

    .line 584
    .line 585
    const-string v4, ""

    .line 586
    .line 587
    const-string v5, ""

    .line 588
    .line 589
    const-string v6, ""

    .line 590
    .line 591
    const-string v7, "long"

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
    const/16 v1, 0xa2

    .line 599
    .line 600
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/l;->K:Lorg/aspectj/lang/c$b;

    .line 605
    .line 606
    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->G:Lorg/aspectj/lang/c$b;

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
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->s:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public B()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->B:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x1

    .line 19
    and-int/2addr v0, v1

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public C()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->D:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x8

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->F:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x20

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public E()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->E:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x10

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public F()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->C:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public G()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->N:Lorg/aspectj/lang/c$b;

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
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->z:Z

    .line 15
    .line 16
    return v0
.end method

.method public H()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->M:Lorg/aspectj/lang/c$b;

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
    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->y:Z

    .line 15
    .line 16
    return v0
.end method

.method public I(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->P:Lorg/aspectj/lang/c$b;

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
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long v2, p1, v0

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const v1, 0x7ffffffe

    .line 29
    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    or-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->t:J

    .line 46
    .line 47
    return-void
.end method

.method public J(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->V:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->a(Z)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/high16 v1, 0x20000

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->z:Z

    .line 29
    .line 30
    return-void
.end method

.method public K(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->R:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    or-int/lit8 v0, v0, 0x8

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 25
    .line 26
    .line 27
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->v:J

    .line 28
    .line 29
    return-void
.end method

.method public L(Lcom/coremedia/iso/boxes/fragment/g;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->T:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    or-int/lit8 v0, v0, 0x20

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->x:Lcom/coremedia/iso/boxes/fragment/g;

    .line 24
    .line 25
    return-void
.end method

.method public M(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->S:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    or-int/lit8 v0, v0, 0x10

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 25
    .line 26
    .line 27
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->w:J

    .line 28
    .line 29
    return-void
.end method

.method public N(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->U:Lorg/aspectj/lang/c$b;

    .line 2
    .line 3
    invoke-static {p1}, Lorg/aspectj/runtime/internal/e;->a(Z)Ljava/lang/Object;

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/high16 v1, 0x10000

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 26
    .line 27
    .line 28
    iput-boolean p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->y:Z

    .line 29
    .line 30
    return-void
.end method

.method public O(J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->Q:Lorg/aspectj/lang/c$b;

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
    const-wide/16 v0, -0x1

    .line 19
    .line 20
    cmp-long v2, p1, v0

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const v1, 0x7ffffffd

    .line 29
    .line 30
    .line 31
    and-int/2addr v0, v1

    .line 32
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    or-int/lit8 v0, v0, 0x2

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 43
    .line 44
    .line 45
    :goto_0
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->u:J

    .line 46
    .line 47
    return-void
.end method

.method public P(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->O:Lorg/aspectj/lang/c$b;

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
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/l;->s:J

    .line 19
    .line 20
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->t(Ljava/nio/ByteBuffer;)J

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->s:J

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    and-int/2addr v0, v1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/l;->t:J

    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, 0x2

    .line 29
    and-int/2addr v0, v2

    .line 30
    if-ne v0, v2, :cond_1

    .line 31
    .line 32
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/l;->u:J

    .line 37
    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/16 v2, 0x8

    .line 43
    .line 44
    and-int/2addr v0, v2

    .line 45
    if-ne v0, v2, :cond_2

    .line 46
    .line 47
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/l;->v:J

    .line 52
    .line 53
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/16 v2, 0x10

    .line 58
    .line 59
    and-int/2addr v0, v2

    .line 60
    if-ne v0, v2, :cond_3

    .line 61
    .line 62
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 63
    .line 64
    .line 65
    move-result-wide v2

    .line 66
    iput-wide v2, p0, Lcom/coremedia/iso/boxes/fragment/l;->w:J

    .line 67
    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    const/16 v2, 0x20

    .line 73
    .line 74
    and-int/2addr v0, v2

    .line 75
    if-ne v0, v2, :cond_4

    .line 76
    .line 77
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/g;

    .line 78
    .line 79
    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/fragment/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 80
    .line 81
    .line 82
    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->x:Lcom/coremedia/iso/boxes/fragment/g;

    .line 83
    .line 84
    :cond_4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    const/high16 v0, 0x10000

    .line 89
    .line 90
    and-int/2addr p1, v0

    .line 91
    if-ne p1, v0, :cond_5

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->y:Z

    .line 94
    .line 95
    :cond_5
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    const/high16 v0, 0x20000

    .line 100
    .line 101
    and-int/2addr p1, v0

    .line 102
    if-ne p1, v0, :cond_6

    .line 103
    .line 104
    iput-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->z:Z

    .line 105
    .line 106
    :cond_6
    return-void
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->s:J

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    and-int/2addr v0, v1

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/l;->v()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x2

    .line 29
    and-int/2addr v0, v1

    .line 30
    if-ne v0, v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/l;->z()J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    const/16 v1, 0x8

    .line 44
    .line 45
    and-int/2addr v0, v1

    .line 46
    if-ne v0, v1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/l;->w()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 53
    .line 54
    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/16 v1, 0x10

    .line 60
    .line 61
    and-int/2addr v0, v1

    .line 62
    if-ne v0, v1, :cond_3

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/l;->y()J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 69
    .line 70
    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/16 v1, 0x20

    .line 76
    .line 77
    and-int/2addr v0, v1

    .line 78
    if-ne v0, v1, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->x:Lcom/coremedia/iso/boxes/fragment/g;

    .line 81
    .line 82
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/fragment/g;->a(Ljava/nio/ByteBuffer;)V

    .line 83
    .line 84
    .line 85
    :cond_4
    return-void
.end method

.method protected g()J
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit8 v1, v0, 0x1

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    const-wide/16 v1, 0x10

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/16 v1, 0x8

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 16
    .line 17
    const/4 v4, 0x2

    .line 18
    const-wide/16 v5, 0x4

    .line 19
    .line 20
    if-ne v3, v4, :cond_1

    .line 21
    .line 22
    add-long/2addr v1, v5

    .line 23
    :cond_1
    and-int/lit8 v3, v0, 0x8

    .line 24
    .line 25
    const/16 v4, 0x8

    .line 26
    .line 27
    if-ne v3, v4, :cond_2

    .line 28
    .line 29
    add-long/2addr v1, v5

    .line 30
    :cond_2
    and-int/lit8 v3, v0, 0x10

    .line 31
    .line 32
    const/16 v4, 0x10

    .line 33
    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    add-long/2addr v1, v5

    .line 37
    :cond_3
    const/16 v3, 0x20

    .line 38
    .line 39
    and-int/2addr v0, v3

    .line 40
    if-ne v0, v3, :cond_4

    .line 41
    .line 42
    add-long/2addr v1, v5

    .line 43
    :cond_4
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->W:Lorg/aspectj/lang/c$b;

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
    const-string v1, "TrackFragmentHeaderBox"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "{trackId="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->s:J

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", baseDataOffset="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->t:J

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", sampleDescriptionIndex="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->u:J

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", defaultSampleDuration="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->v:J

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", defaultSampleSize="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->w:J

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v1, ", defaultSampleFlags="

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->x:Lcom/coremedia/iso/boxes/fragment/g;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", durationIsEmpty="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->y:Z

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v1, ", defaultBaseIsMoof="

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-boolean v1, p0, Lcom/coremedia/iso/boxes/fragment/l;->z:Z

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/16 v1, 0x7d

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    return-object v0
.end method

.method public v()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->H:Lorg/aspectj/lang/c$b;

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
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->t:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public w()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->J:Lorg/aspectj/lang/c$b;

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
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->v:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public x()Lcom/coremedia/iso/boxes/fragment/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->L:Lorg/aspectj/lang/c$b;

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
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->x:Lcom/coremedia/iso/boxes/fragment/g;

    .line 15
    .line 16
    return-object v0
.end method

.method public y()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->K:Lorg/aspectj/lang/c$b;

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
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->w:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public z()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/l;->I:Lorg/aspectj/lang/c$b;

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
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/l;->u:J

    .line 15
    .line 16
    return-wide v0
.end method
