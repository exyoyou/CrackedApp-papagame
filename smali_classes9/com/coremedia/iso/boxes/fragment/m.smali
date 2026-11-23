.class public Lcom/coremedia/iso/boxes/fragment/m;
.super Lcom/googlecode/mp4parser/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coremedia/iso/boxes/fragment/m$a;
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

.field public static final y:Ljava/lang/String; = "tfra"

.field private static final synthetic z:Lorg/aspectj/lang/c$b;


# instance fields
.field private s:J

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/coremedia/iso/boxes/fragment/m;->s()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "tfra"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/c;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 8
    .line 9
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 10
    .line 11
    iput v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 12
    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 18
    .line 19
    return-void
.end method

.method private static synthetic s()V
    .locals 10

    .line 1
    new-instance v8, Lorg/aspectj/runtime/reflect/e;

    .line 2
    .line 3
    const-string v0, "TrackFragmentRandomAccessBox.java"

    .line 4
    .line 5
    const-class v1, Lcom/coremedia/iso/boxes/fragment/m;

    .line 6
    .line 7
    invoke-direct {v8, v0, v1}, Lorg/aspectj/runtime/reflect/e;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "1"

    .line 11
    .line 12
    const-string v2, "setTrackId"

    .line 13
    .line 14
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

    .line 15
    .line 16
    const-string v4, "long"

    .line 17
    .line 18
    const-string v5, "trackId"

    .line 19
    .line 20
    const-string v6, ""

    .line 21
    .line 22
    const-string v7, "void"

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
    const/16 v1, 0x91

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
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->z:Lorg/aspectj/lang/c$b;

    .line 38
    .line 39
    const-string v1, "1"

    .line 40
    .line 41
    const-string v2, "setLengthSizeOfTrafNum"

    .line 42
    .line 43
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

    .line 44
    .line 45
    const-string v4, "int"

    .line 46
    .line 47
    const-string v5, "lengthSizeOfTrafNum"

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
    const/16 v1, 0x95

    .line 59
    .line 60
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->A:Lorg/aspectj/lang/c$b;

    .line 65
    .line 66
    const-string v1, "1"

    .line 67
    .line 68
    const-string v2, "getEntries"

    .line 69
    .line 70
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const-string v7, "java.util.List"

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
    const/16 v1, 0xb9

    .line 86
    .line 87
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->J:Lorg/aspectj/lang/c$b;

    .line 92
    .line 93
    const-string v1, "1"

    .line 94
    .line 95
    const-string v2, "setEntries"

    .line 96
    .line 97
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

    .line 98
    .line 99
    const-string v4, "java.util.List"

    .line 100
    .line 101
    const-string v5, "entries"

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
    const/16 v1, 0xbd

    .line 113
    .line 114
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->K:Lorg/aspectj/lang/c$b;

    .line 119
    .line 120
    const-string v1, "1"

    .line 121
    .line 122
    const-string v2, "toString"

    .line 123
    .line 124
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const-string v7, "java.lang.String"

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
    const/16 v1, 0x122

    .line 140
    .line 141
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->L:Lorg/aspectj/lang/c$b;

    .line 146
    .line 147
    const-string v1, "1"

    .line 148
    .line 149
    const-string v2, "setLengthSizeOfTrunNum"

    .line 150
    .line 151
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

    .line 152
    .line 153
    const-string v4, "int"

    .line 154
    .line 155
    const-string v5, "lengthSizeOfTrunNum"

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
    const/16 v1, 0x99

    .line 167
    .line 168
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->B:Lorg/aspectj/lang/c$b;

    .line 173
    .line 174
    const-string v1, "1"

    .line 175
    .line 176
    const-string v2, "setLengthSizeOfSampleNum"

    .line 177
    .line 178
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

    .line 179
    .line 180
    const-string v4, "int"

    .line 181
    .line 182
    const-string v5, "lengthSizeOfSampleNum"

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
    const/16 v1, 0x9d

    .line 194
    .line 195
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->C:Lorg/aspectj/lang/c$b;

    .line 200
    .line 201
    const-string v1, "1"

    .line 202
    .line 203
    const-string v2, "getTrackId"

    .line 204
    .line 205
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const-string v7, "long"

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
    const/16 v1, 0xa1

    .line 221
    .line 222
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->D:Lorg/aspectj/lang/c$b;

    .line 227
    .line 228
    const-string v1, "1"

    .line 229
    .line 230
    const-string v2, "getReserved"

    .line 231
    .line 232
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const-string v7, "int"

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
    const/16 v1, 0xa5

    .line 248
    .line 249
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->E:Lorg/aspectj/lang/c$b;

    .line 254
    .line 255
    const-string v1, "1"

    .line 256
    .line 257
    const-string v2, "getLengthSizeOfTrafNum"

    .line 258
    .line 259
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const/16 v1, 0xa9

    .line 275
    .line 276
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->F:Lorg/aspectj/lang/c$b;

    .line 281
    .line 282
    const-string v1, "1"

    .line 283
    .line 284
    const-string v2, "getLengthSizeOfTrunNum"

    .line 285
    .line 286
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const-string v7, "int"

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
    const/16 v1, 0xad

    .line 302
    .line 303
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->G:Lorg/aspectj/lang/c$b;

    .line 308
    .line 309
    const-string v1, "1"

    .line 310
    .line 311
    const-string v2, "getLengthSizeOfSampleNum"

    .line 312
    .line 313
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const/16 v1, 0xb1

    .line 329
    .line 330
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->H:Lorg/aspectj/lang/c$b;

    .line 335
    .line 336
    const-string v1, "1"

    .line 337
    .line 338
    const-string v2, "getNumberOfEntries"

    .line 339
    .line 340
    const-string v3, "com.coremedia.iso.boxes.fragment.TrackFragmentRandomAccessBox"

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
    const/16 v1, 0xb5

    .line 356
    .line 357
    invoke-virtual {v8, v9, v0, v1}, Lorg/aspectj/runtime/reflect/e;->H(Ljava/lang/String;Lorg/aspectj/lang/e;I)Lorg/aspectj/lang/c$b;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    sput-object v0, Lcom/coremedia/iso/boxes/fragment/m;->I:Lorg/aspectj/lang/c$b;

    .line 362
    .line 363
    return-void
.end method


# virtual methods
.method public A()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->E:Lorg/aspectj/lang/c$b;

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
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->t:I

    .line 15
    .line 16
    return v0
.end method

.method public B()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->D:Lorg/aspectj/lang/c$b;

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
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->s:J

    .line 15
    .line 16
    return-wide v0
.end method

.method public C(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/m$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->K:Lorg/aspectj/lang/c$b;

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
    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method

.method public D(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->C:Lorg/aspectj/lang/c$b;

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
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 19
    .line 20
    return-void
.end method

.method public E(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->A:Lorg/aspectj/lang/c$b;

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
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 19
    .line 20
    return-void
.end method

.method public F(I)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->B:Lorg/aspectj/lang/c$b;

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
    iput p1, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 19
    .line 20
    return-void
.end method

.method public G(J)V
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->z:Lorg/aspectj/lang/c$b;

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
    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/m;->s:J

    .line 19
    .line 20
    return-void
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 7

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
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->s:J

    .line 9
    .line 10
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    const/4 v2, 0x6

    .line 15
    shr-long v2, v0, v2

    .line 16
    .line 17
    long-to-int v3, v2

    .line 18
    iput v3, p0, Lcom/coremedia/iso/boxes/fragment/m;->t:I

    .line 19
    .line 20
    const-wide/16 v2, 0x3f

    .line 21
    .line 22
    and-long/2addr v2, v0

    .line 23
    long-to-int v3, v2

    .line 24
    shr-int/lit8 v2, v3, 0x4

    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    add-int/2addr v2, v3

    .line 28
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 29
    .line 30
    const-wide/16 v4, 0xc

    .line 31
    .line 32
    and-long/2addr v4, v0

    .line 33
    long-to-int v2, v4

    .line 34
    shr-int/lit8 v2, v2, 0x2

    .line 35
    .line 36
    add-int/2addr v2, v3

    .line 37
    iput v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 38
    .line 39
    const-wide/16 v4, 0x3

    .line 40
    .line 41
    and-long/2addr v0, v4

    .line 42
    long-to-int v1, v0

    .line 43
    add-int/2addr v1, v3

    .line 44
    iput v1, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 45
    .line 46
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    new-instance v2, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 56
    .line 57
    const/4 v2, 0x0

    .line 58
    :goto_0
    int-to-long v4, v2

    .line 59
    cmp-long v6, v4, v0

    .line 60
    .line 61
    if-ltz v6, :cond_0

    .line 62
    .line 63
    return-void

    .line 64
    :cond_0
    new-instance v4, Lcom/coremedia/iso/boxes/fragment/m$a;

    .line 65
    .line 66
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/fragment/m$a;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ne v5, v3, :cond_1

    .line 74
    .line 75
    invoke-static {p1}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->a(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcom/coremedia/iso/g;->o(Ljava/nio/ByteBuffer;)J

    .line 83
    .line 84
    .line 85
    move-result-wide v5

    .line 86
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->b(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 91
    .line 92
    .line 93
    move-result-wide v5

    .line 94
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->a(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/coremedia/iso/g;->l(Ljava/nio/ByteBuffer;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v5

    .line 101
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->b(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 102
    .line 103
    .line 104
    :goto_1
    iget v5, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 105
    .line 106
    invoke-static {p1, v5}, Lcom/coremedia/iso/h;->a(Ljava/nio/ByteBuffer;I)J

    .line 107
    .line 108
    .line 109
    move-result-wide v5

    .line 110
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->c(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 111
    .line 112
    .line 113
    iget v5, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 114
    .line 115
    invoke-static {p1, v5}, Lcom/coremedia/iso/h;->a(Ljava/nio/ByteBuffer;I)J

    .line 116
    .line 117
    .line 118
    move-result-wide v5

    .line 119
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->d(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 120
    .line 121
    .line 122
    iget v5, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 123
    .line 124
    invoke-static {p1, v5}, Lcom/coremedia/iso/h;->a(Ljava/nio/ByteBuffer;I)J

    .line 125
    .line 126
    .line 127
    move-result-wide v5

    .line 128
    invoke-static {v4, v5, v6}, Lcom/coremedia/iso/boxes/fragment/m$a;->e(Lcom/coremedia/iso/boxes/fragment/m$a;J)V

    .line 129
    .line 130
    .line 131
    iget-object v5, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    add-int/lit8 v2, v2, 0x1

    .line 137
    .line 138
    goto :goto_0
.end method

.method protected c(Ljava/nio/ByteBuffer;)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/c;->u(Ljava/nio/ByteBuffer;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->s:J

    .line 5
    .line 6
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->t:I

    .line 10
    .line 11
    shl-int/lit8 v0, v0, 0x6

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    sub-int/2addr v2, v3

    .line 18
    and-int/lit8 v2, v2, 0x3

    .line 19
    .line 20
    shl-int/lit8 v2, v2, 0x4

    .line 21
    .line 22
    int-to-long v4, v2

    .line 23
    or-long/2addr v0, v4

    .line 24
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 25
    .line 26
    sub-int/2addr v2, v3

    .line 27
    and-int/lit8 v2, v2, 0x3

    .line 28
    .line 29
    shl-int/lit8 v2, v2, 0x2

    .line 30
    .line 31
    int-to-long v4, v2

    .line 32
    or-long/2addr v0, v4

    .line 33
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 34
    .line 35
    sub-int/2addr v2, v3

    .line 36
    and-int/lit8 v2, v2, 0x3

    .line 37
    .line 38
    int-to-long v4, v2

    .line 39
    or-long/2addr v0, v4

    .line 40
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    int-to-long v0, v0

    .line 50
    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_0

    .line 64
    .line 65
    return-void

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/coremedia/iso/boxes/fragment/m$a;

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/c;->getVersion()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-ne v2, v3, :cond_1

    .line 77
    .line 78
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->f(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 83
    .line 84
    .line 85
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->g(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 86
    .line 87
    .line 88
    move-result-wide v4

    .line 89
    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/i;->l(Ljava/nio/ByteBuffer;J)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->f(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 98
    .line 99
    .line 100
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->g(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 101
    .line 102
    .line 103
    move-result-wide v4

    .line 104
    invoke-static {p1, v4, v5}, Lcom/coremedia/iso/i;->i(Ljava/nio/ByteBuffer;J)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->h(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 108
    .line 109
    .line 110
    move-result-wide v4

    .line 111
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 112
    .line 113
    invoke-static {v4, v5, p1, v2}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->i(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v4

    .line 120
    iget v2, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 121
    .line 122
    invoke-static {v4, v5, p1, v2}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 123
    .line 124
    .line 125
    invoke-static {v1}, Lcom/coremedia/iso/boxes/fragment/m$a;->j(Lcom/coremedia/iso/boxes/fragment/m$a;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v1

    .line 129
    iget v4, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 130
    .line 131
    invoke-static {v1, v2, p1, v4}, Lcom/coremedia/iso/j;->a(JLjava/nio/ByteBuffer;I)V

    .line 132
    .line 133
    .line 134
    goto :goto_0
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
    const-wide/16 v2, 0x10

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    mul-int/lit8 v0, v0, 0x10

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-int/lit8 v0, v0, 0x8

    .line 26
    .line 27
    :goto_0
    int-to-long v0, v0

    .line 28
    add-long/2addr v2, v0

    .line 29
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 30
    .line 31
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    mul-int v0, v0, v1

    .line 38
    .line 39
    int-to-long v0, v0

    .line 40
    add-long/2addr v2, v0

    .line 41
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 42
    .line 43
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    mul-int v0, v0, v1

    .line 50
    .line 51
    int-to-long v0, v0

    .line 52
    add-long/2addr v2, v0

    .line 53
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 54
    .line 55
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    mul-int v0, v0, v1

    .line 62
    .line 63
    int-to-long v0, v0

    .line 64
    add-long/2addr v2, v0

    .line 65
    return-wide v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->L:Lorg/aspectj/lang/c$b;

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
    const-string v1, "TrackFragmentRandomAccessBox{trackId="

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/fragment/m;->s:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", entries="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public v()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/fragment/m$a;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->J:Lorg/aspectj/lang/c$b;

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
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public w()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->H:Lorg/aspectj/lang/c$b;

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
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->w:I

    .line 15
    .line 16
    return v0
.end method

.method public x()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->F:Lorg/aspectj/lang/c$b;

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
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->u:I

    .line 15
    .line 16
    return v0
.end method

.method public y()I
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->G:Lorg/aspectj/lang/c$b;

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
    iget v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->v:I

    .line 15
    .line 16
    return v0
.end method

.method public z()J
    .locals 2

    .line 1
    sget-object v0, Lcom/coremedia/iso/boxes/fragment/m;->I:Lorg/aspectj/lang/c$b;

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
    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/m;->x:Ljava/util/List;

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
