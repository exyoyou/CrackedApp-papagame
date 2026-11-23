.class public Lcom/coremedia/iso/boxes/fragment/n;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/n$a;
    }
.end annotation


# static fields
.field private static final synthetic A:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic B:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic C:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic D:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic E:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic F:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic G:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic H:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic I:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic J:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic K:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic L:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic M:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic N:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic O:Lorg/aspectj/lang/c$b; = null

.field private static final synthetic P:Lorg/aspectj/lang/c$b; = null

.field public static final v:Ljava/lang/String; = "trun"

.field private static final synthetic w:Lorg/aspectj/lang/c$b;

.field private static final synthetic x:Lorg/aspectj/lang/c$b;

.field private static final synthetic y:Lorg/aspectj/lang/c$b;

.field private static final synthetic z:Lorg/aspectj/lang/c$b;


# instance fields
.field private s:I

.field private t:Lcom/coremedia/iso/boxes/fragment/g;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/n$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/fragment/n;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "trun"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private static synthetic s()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "TrackRunBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/coremedia/iso/boxes/fragment/n;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "getEntries"

    .line 13
    .line 14
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const-string v7, "java.util.List"

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
    const/16 v1, 0x39

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
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->w:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "setDataOffset"

    .line 42
    .line 43
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 44
    .line 45
    const-string v4, "int"

    .line 46
    .line 47
    const-string v5, "dataOffset"

    .line 48
    .line 49
    const-string v6, ""

    .line 50
    .line 51
    const-string v7, "void"

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
    const/16 v1, 0x78

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->x:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "setDataOffsetPresent"

    .line 69
    .line 70
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 71
    .line 72
    const-string v4, "boolean"

    .line 73
    .line 74
    const-string v5, "v"

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
    const/16 v1, 0x10b

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->G:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    const-string v1, "1"

    .line 94
    .line 95
    const-string v2, "setSampleSizePresent"

    .line 96
    .line 97
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 98
    .line 99
    const-string v4, "boolean"

    .line 100
    .line 101
    const-string v5, "v"

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
    const/16 v1, 0x113

    .line 113
    .line 114
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->H:Lorg/aspectj/lang/c$b;

    .line 119
    .line 120
    const-string v1, "1"

    .line 121
    .line 122
    const-string v2, "setSampleDurationPresent"

    .line 123
    .line 124
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 125
    .line 126
    const-string v4, "boolean"

    .line 127
    .line 128
    const-string v5, "v"

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
    const/16 v1, 0x11b

    .line 140
    .line 141
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->I:Lorg/aspectj/lang/c$b;

    .line 146
    .line 147
    const-string v1, "1"

    .line 148
    .line 149
    const-string v2, "setSampleFlagsPresent"

    .line 150
    .line 151
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 152
    .line 153
    const-string v4, "boolean"

    .line 154
    .line 155
    const-string v5, "v"

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
    const/16 v1, 0x124

    .line 167
    .line 168
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->J:Lorg/aspectj/lang/c$b;

    .line 173
    .line 174
    const-string v1, "1"

    .line 175
    .line 176
    const-string v2, "setSampleCompositionTimeOffsetPresent"

    .line 177
    .line 178
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 179
    .line 180
    const-string v4, "boolean"

    .line 181
    .line 182
    const-string v5, "v"

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
    const/16 v1, 0x12c

    .line 194
    .line 195
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->K:Lorg/aspectj/lang/c$b;

    .line 200
    .line 201
    const-string v1, "1"

    .line 202
    .line 203
    const-string v2, "getDataOffset"

    .line 204
    .line 205
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 206
    .line 207
    const-string v4, ""

    .line 208
    .line 209
    const-string v5, ""

    .line 210
    .line 211
    const-string v6, ""

    .line 212
    .line 213
    const-string v7, "int"

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
    const/16 v1, 0x135

    .line 221
    .line 222
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->L:Lorg/aspectj/lang/c$b;

    .line 227
    .line 228
    const-string v1, "1"

    .line 229
    .line 230
    const-string v2, "getFirstSampleFlags"

    .line 231
    .line 232
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 233
    .line 234
    const-string v4, ""

    .line 235
    .line 236
    const-string v5, ""

    .line 237
    .line 238
    const-string v6, ""

    .line 239
    .line 240
    const-string v7, "com.coremedia.iso.boxes.fragment.SampleFlags"

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
    const/16 v1, 0x139

    .line 248
    .line 249
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->M:Lorg/aspectj/lang/c$b;

    .line 254
    .line 255
    const-string v1, "1"

    .line 256
    .line 257
    const-string v2, "setFirstSampleFlags"

    .line 258
    .line 259
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 260
    .line 261
    const-string v4, "com.coremedia.iso.boxes.fragment.SampleFlags"

    .line 262
    .line 263
    const-string v5, "firstSampleFlags"

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
    const/16 v1, 0x13d

    .line 275
    .line 276
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->N:Lorg/aspectj/lang/c$b;

    .line 281
    .line 282
    const-string v1, "1"

    .line 283
    .line 284
    const-string v2, "toString"

    .line 285
    .line 286
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 287
    .line 288
    const-string v4, ""

    .line 289
    .line 290
    const-string v5, ""

    .line 291
    .line 292
    const-string v6, ""

    .line 293
    .line 294
    const-string v7, "java.lang.String"

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
    const/16 v1, 0x147

    .line 302
    .line 303
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->O:Lorg/aspectj/lang/c$b;

    .line 308
    .line 309
    const-string v1, "1"

    .line 310
    .line 311
    const-string v2, "setEntries"

    .line 312
    .line 313
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 314
    .line 315
    const-string v4, "java.util.List"

    .line 316
    .line 317
    const-string v5, "entries"

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
    const/16 v1, 0x156

    .line 329
    .line 330
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->P:Lorg/aspectj/lang/c$b;

    .line 335
    .line 336
    const-string v1, "1"

    .line 337
    .line 338
    const-string v2, "getSampleCompositionTimeOffsets"

    .line 339
    .line 340
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const-string v7, "[J"

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
    const/16 v1, 0x81

    .line 356
    .line 357
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->y:Lorg/aspectj/lang/c$b;

    .line 362
    .line 363
    const-string v1, "1"

    .line 364
    .line 365
    const-string v2, "getSampleCount"

    .line 366
    .line 367
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

    .line 368
    .line 369
    const-string v4, ""

    .line 370
    .line 371
    const-string v5, ""

    .line 372
    .line 373
    const-string v6, ""

    .line 374
    .line 375
    const-string v7, "long"

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
    const/16 v1, 0xee

    .line 383
    .line 384
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->z:Lorg/aspectj/lang/c$b;

    .line 389
    .line 390
    const-string v1, "1"

    .line 391
    .line 392
    const-string v2, "isDataOffsetPresent"

    .line 393
    .line 394
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0xf2

    .line 410
    .line 411
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->A:Lorg/aspectj/lang/c$b;

    .line 416
    .line 417
    const-string v1, "1"

    .line 418
    .line 419
    const-string v2, "isFirstSampleFlagsPresent"

    .line 420
    .line 421
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const/16 v1, 0xf6

    .line 437
    .line 438
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->B:Lorg/aspectj/lang/c$b;

    .line 443
    .line 444
    const-string v1, "1"

    .line 445
    .line 446
    const-string v2, "isSampleSizePresent"

    .line 447
    .line 448
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const/16 v1, 0xfb

    .line 464
    .line 465
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->C:Lorg/aspectj/lang/c$b;

    .line 470
    .line 471
    const-string v1, "1"

    .line 472
    .line 473
    const-string v2, "isSampleDurationPresent"

    .line 474
    .line 475
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0xff

    .line 491
    .line 492
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->D:Lorg/aspectj/lang/c$b;

    .line 497
    .line 498
    const-string v1, "1"

    .line 499
    .line 500
    const-string v2, "isSampleFlagsPresent"

    .line 501
    .line 502
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0x103

    .line 518
    .line 519
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->E:Lorg/aspectj/lang/c$b;

    .line 524
    .line 525
    const-string v1, "1"

    .line 526
    .line 527
    const-string v2, "isSampleCompositionTimeOffsetPresent"

    .line 528
    .line 529
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackRunBox"

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
    const-string v7, "boolean"

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
    const/16 v1, 0x107

    .line 545
    .line 546
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/n;->F:Lorg/aspectj/lang/c$b;

    .line 551
    .line 552
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->A:Lorg/aspectj/lang/c$b;

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
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    return v1

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    return v0
.end method

.method public B()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->B:Lorg/aspectj/lang/c$b;

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
    const/4 v1, 0x4

    .line 19
    and-int/2addr v0, v1

    .line 20
    if-ne v0, v1, :cond_0

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

.method public C()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->F:Lorg/aspectj/lang/c$b;

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
    const/16 v1, 0x800

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public D()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->D:Lorg/aspectj/lang/c$b;

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
    const/16 v1, 0x100

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public E()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->E:Lorg/aspectj/lang/c$b;

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
    const/16 v1, 0x400

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public F()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->C:Lorg/aspectj/lang/c$b;

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
    const/16 v1, 0x200

    .line 19
    .line 20
    and-int/2addr v0, v1

    .line 21
    if-ne v0, v1, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    return v0
.end method

.method public G(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->x:Lorg/aspectj/lang/c$b;

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
    const/4 v0, -0x1

    .line 19
    if-ne p1, v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const v1, 0xfffffe

    .line 26
    .line 27
    .line 28
    and-int/2addr v0, v1

    .line 29
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    or-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/n;->s:I

    .line 43
    .line 44
    return-void
.end method

.method public H(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->G:Lorg/aspectj/lang/c$b;

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
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    or-int/lit8 p1, p1, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0xfffffe

    .line 35
    .line 36
    .line 37
    and-int/2addr p1, v0

    .line 38
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public I(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/n$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->P:Lorg/aspectj/lang/c$b;

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
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public J(Lcom/coremedia/iso/boxes/fragment/g;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->N:Lorg/aspectj/lang/c$b;

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
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const v1, 0xfffffb

    .line 21
    .line 22
    .line 23
    and-int/2addr v0, v1

    .line 24
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    or-int/lit8 v0, v0, 0x4

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 35
    .line 36
    .line 37
    :goto_0
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/n;->t:Lcom/coremedia/iso/boxes/fragment/g;

    .line 38
    .line 39
    return-void
.end method

.method public K(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->K:Lorg/aspectj/lang/c$b;

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
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    or-int/lit16 p1, p1, 0x800

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0xfff7ff

    .line 35
    .line 36
    .line 37
    and-int/2addr p1, v0

    .line 38
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public L(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->I:Lorg/aspectj/lang/c$b;

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
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    or-int/lit16 p1, p1, 0x100

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0xfffeff

    .line 35
    .line 36
    .line 37
    and-int/2addr p1, v0

    .line 38
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public M(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->J:Lorg/aspectj/lang/c$b;

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
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    or-int/lit16 p1, p1, 0x400

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0xfffbff

    .line 35
    .line 36
    .line 37
    and-int/2addr p1, v0

    .line 38
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public N(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->H:Lorg/aspectj/lang/c$b;

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
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    or-int/lit16 p1, p1, 0x200

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    const v0, 0xfffdff

    .line 35
    .line 36
    .line 37
    and-int/2addr p1, v0

    .line 38
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 39
    .line 40
    .line 41
    :goto_0
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 6

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
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    and-int/2addr v2, v3

    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/n;->s:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, -0x1

    .line 28
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/n;->s:I

    .line 29
    .line 30
    :goto_0
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x4

    .line 35
    and-int/2addr v2, v3

    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    new-instance v2, Lcom/coremedia/iso/boxes/fragment/g;

    .line 39
    .line 40
    invoke-direct {v2, p1}, Lcom/coremedia/iso/boxes/fragment/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p0, Lcom/coremedia/iso/boxes/fragment/n;->t:Lcom/coremedia/iso/boxes/fragment/g;

    .line 44
    .line 45
    :cond_1
    const/4 v2, 0x0

    .line 46
    :goto_1
    int-to-long v3, v2

    .line 47
    cmp-long v5, v3, v0

    .line 48
    .line 49
    if-ltz v5, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    new-instance v3, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 53
    .line 54
    invoke-direct {v3}, Lcom/coremedia/iso/boxes/fragment/n$a;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/16 v5, 0x100

    .line 62
    .line 63
    and-int/2addr v4, v5

    .line 64
    if-ne v4, v5, :cond_3

    .line 65
    .line 66
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 67
    .line 68
    .line 69
    move-result-wide v4

    .line 70
    invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/n$a;->e(Lcom/coremedia/iso/boxes/fragment/n$a;J)V

    .line 71
    .line 72
    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    const/16 v5, 0x200

    .line 78
    .line 79
    and-int/2addr v4, v5

    .line 80
    if-ne v4, v5, :cond_4

    .line 81
    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v4

    .line 86
    invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/n$a;->f(Lcom/coremedia/iso/boxes/fragment/n$a;J)V

    .line 87
    .line 88
    .line 89
    :cond_4
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    const/16 v5, 0x400

    .line 94
    .line 95
    and-int/2addr v4, v5

    .line 96
    if-ne v4, v5, :cond_5

    .line 97
    .line 98
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/g;

    .line 99
    .line 100
    invoke-direct {v4, p1}, Lcom/coremedia/iso/boxes/fragment/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 101
    .line 102
    .line 103
    invoke-static {v3, v4}, Lcom/coremedia/iso/boxes/fragment/n$a;->g(Lcom/coremedia/iso/boxes/fragment/n$a;Lcom/coremedia/iso/boxes/fragment/g;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    const/16 v5, 0x800

    .line 111
    .line 112
    and-int/2addr v4, v5

    .line 113
    if-ne v4, v5, :cond_6

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    int-to-long v4, v4

    .line 120
    invoke-static {v3, v4, v5}, Lcom/coremedia/iso/boxes/fragment/n$a;->h(Lcom/coremedia/iso/boxes/fragment/n$a;J)V

    .line 121
    .line 122
    .line 123
    :cond_6
    iget-object v4, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 v2, v2, 0x1

    .line 129
    .line 130
    goto :goto_1
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-long v0, v0

    .line 11
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getFlags()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    and-int/lit8 v1, v0, 0x1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/n;->s:I

    .line 24
    .line 25
    int-to-long v1, v1

    .line 26
    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 27
    .line 28
    .line 29
    :cond_0
    and-int/lit8 v1, v0, 0x4

    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/n;->t:Lcom/coremedia/iso/boxes/fragment/g;

    .line 35
    .line 36
    invoke-virtual {v1, p1}, Lcom/coremedia/iso/boxes/fragment/g;->a(Ljava/nio/ByteBuffer;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 57
    .line 58
    and-int/lit16 v3, v0, 0x100

    .line 59
    .line 60
    const/16 v4, 0x100

    .line 61
    .line 62
    if-ne v3, v4, :cond_4

    .line 63
    .line 64
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/n$a;->a(Lcom/coremedia/iso/boxes/fragment/n$a;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 69
    .line 70
    .line 71
    :cond_4
    and-int/lit16 v3, v0, 0x200

    .line 72
    .line 73
    const/16 v4, 0x200

    .line 74
    .line 75
    if-ne v3, v4, :cond_5

    .line 76
    .line 77
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/n$a;->b(Lcom/coremedia/iso/boxes/fragment/n$a;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 82
    .line 83
    .line 84
    :cond_5
    and-int/lit16 v3, v0, 0x400

    .line 85
    .line 86
    const/16 v4, 0x400

    .line 87
    .line 88
    if-ne v3, v4, :cond_6

    .line 89
    .line 90
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/n$a;->c(Lcom/coremedia/iso/boxes/fragment/n$a;)Lcom/coremedia/iso/boxes/fragment/g;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3, p1}, Lcom/coremedia/iso/boxes/fragment/g;->a(Ljava/nio/ByteBuffer;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    and-int/lit16 v3, v0, 0x800

    .line 98
    .line 99
    const/16 v4, 0x800

    .line 100
    .line 101
    if-ne v3, v4, :cond_2

    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_7

    .line 108
    .line 109
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/n$a;->d(Lcom/coremedia/iso/boxes/fragment/n$a;)J

    .line 110
    .line 111
    .line 112
    move-result-wide v2

    .line 113
    invoke-static {p1, v2, v3}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    invoke-static {v2}, Lcom/coremedia/iso/boxes/fragment/n$a;->d(Lcom/coremedia/iso/boxes/fragment/n$a;)J

    .line 118
    .line 119
    .line 120
    move-result-wide v2

    .line 121
    long-to-int v3, v2

    .line 122
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    .line 124
    .line 125
    goto :goto_0
.end method

.method protected g()J
    .locals 9

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
    const-wide/16 v1, 0xc

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-wide/16 v1, 0x8

    .line 14
    .line 15
    :goto_0
    and-int/lit8 v3, v0, 0x4

    .line 16
    .line 17
    const/4 v4, 0x4

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
    and-int/lit16 v3, v0, 0x100

    .line 24
    .line 25
    const/16 v4, 0x100

    .line 26
    .line 27
    if-ne v3, v4, :cond_2

    .line 28
    .line 29
    move-wide v3, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    const-wide/16 v3, 0x0

    .line 32
    .line 33
    :goto_1
    and-int/lit16 v7, v0, 0x200

    .line 34
    .line 35
    const/16 v8, 0x200

    .line 36
    .line 37
    if-ne v7, v8, :cond_3

    .line 38
    .line 39
    add-long/2addr v3, v5

    .line 40
    :cond_3
    and-int/lit16 v7, v0, 0x400

    .line 41
    .line 42
    const/16 v8, 0x400

    .line 43
    .line 44
    if-ne v7, v8, :cond_4

    .line 45
    .line 46
    add-long/2addr v3, v5

    .line 47
    :cond_4
    const/16 v7, 0x800

    .line 48
    .line 49
    and-int/2addr v0, v7

    .line 50
    if-ne v0, v7, :cond_5

    .line 51
    .line 52
    add-long/2addr v3, v5

    .line 53
    :cond_5
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    int-to-long v5, v0

    .line 60
    mul-long v3, v3, v5

    .line 61
    .line 62
    add-long/2addr v1, v3

    .line 63
    return-wide v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->O:Lorg/aspectj/lang/c$b;

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
    const-string v1, "TrackRunBox"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, "{sampleCount="

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, ", dataOffset="

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget v1, p0, Lcom/coremedia/iso/boxes/fragment/n;->s:I

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", dataOffsetPresent="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/n;->A()Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, ", sampleSizePresent="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/n;->F()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", sampleDurationPresent="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/n;->D()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, ", sampleFlagsPresentPresent="

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/n;->E()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", sampleCompositionTimeOffsetPresent="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/n;->C()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v1, ", firstSampleFlags="

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/n;->t:Lcom/coremedia/iso/boxes/fragment/g;

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x7d

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    return-object v0
.end method

.method public v()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->L:Lorg/aspectj/lang/c$b;

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
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->s:I

    .line 15
    .line 16
    return v0
.end method

.method public w()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/n$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->w:Lorg/aspectj/lang/c$b;

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
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 15
    .line 16
    return-object v0
.end method

.method public x()Lcom/coremedia/iso/boxes/fragment/g;
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->M:Lorg/aspectj/lang/c$b;

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
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->t:Lcom/coremedia/iso/boxes/fragment/g;

    .line 15
    .line 16
    return-object v0
.end method

.method public y()[J
    .locals 5

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->y:Lorg/aspectj/lang/c$b;

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
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/fragment/n;->C()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-array v1, v0, [J

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-lt v2, v0, :cond_0

    .line 30
    .line 31
    return-object v1

    .line 32
    :cond_0
    iget-object v3, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/n$a;->i()J

    .line 41
    .line 42
    .line 43
    move-result-wide v3

    .line 44
    aput-wide v3, v1, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    const/4 v0, 0x0

    .line 50
    return-object v0
.end method

.method public z()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/n;->z:Lorg/aspectj/lang/c$b;

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
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/n;->u:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    int-to-long v0, v0

    .line 21
    return-wide v0
.end method
