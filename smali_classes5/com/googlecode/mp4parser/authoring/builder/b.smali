.class public Lcom/googlecode/mp4parser/authoring/builder/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/builder/b$b;
    }
.end annotation


# static fields
.field private static f:Ljava/util/logging/Logger;

.field static final synthetic g:Z


# instance fields
.field a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/coremedia/iso/boxes/z0;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/mp4parser/iso14496/part12/b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;>;"
        }
    .end annotation
.end field

.field d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[J>;"
        }
    .end annotation
.end field

.field private e:Lcom/googlecode/mp4parser/authoring/builder/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->a:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->b:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->c:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->d:Ljava/util/HashMap;

    .line 31
    .line 32
    return-void
.end method

.method public static r(JJ)J
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-nez v2, :cond_0

    .line 6
    .line 7
    return-wide p0

    .line 8
    :cond_0
    rem-long/2addr p0, p2

    .line 9
    invoke-static {p2, p3, p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->r(JJ)J

    .line 10
    .line 11
    .line 12
    move-result-wide p0

    .line 13
    return-wide p0
.end method

.method private static w([I)J
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-lt v3, v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    aget v4, p0, v3

    .line 9
    .line 10
    int-to-long v4, v4

    .line 11
    add-long/2addr v1, v4

    .line 12
    add-int/lit8 v3, v3, 0x1

    .line 13
    .line 14
    goto :goto_0
.end method

.method private static x([J)J
    .locals 6

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-lt v3, v0, :cond_0

    .line 6
    .line 7
    return-wide v1

    .line 8
    :cond_0
    aget-wide v4, p0, v3

    .line 9
    .line 10
    add-long/2addr v1, v4

    .line 11
    add-int/lit8 v3, v3, 0x1

    .line 12
    .line 13
    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/j;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->e:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/h;

    .line 6
    .line 7
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, p1, v1}, Lcom/googlecode/mp4parser/authoring/builder/h;-><init>(Lcom/googlecode/mp4parser/authoring/d;I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->e:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 12
    .line 13
    :cond_0
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v2, "Creating movie "

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/4 v2, 0x0

    .line 45
    if-nez v1, :cond_a

    .line 46
    .line 47
    new-instance v1, Lcom/googlecode/mp4parser/d;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/googlecode/mp4parser/d;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->e(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/s;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 57
    .line 58
    .line 59
    new-instance v6, Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_9

    .line 77
    .line 78
    invoke-virtual {p0, p1, v6}, Lcom/googlecode/mp4parser/authoring/builder/b;->f(Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;)Lcom/coremedia/iso/boxes/h0;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 83
    .line 84
    .line 85
    const-string v3, "trak/mdia/minf/stbl/stsz"

    .line 86
    .line 87
    invoke-static {v0, v3}, Lcom/googlecode/mp4parser/util/m;->f(Lcom/coremedia/iso/boxes/d;Ljava/lang/String;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-wide/16 v3, 0x0

    .line 96
    .line 97
    move-wide v7, v3

    .line 98
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v3

    .line 102
    if-nez v3, :cond_8

    .line 103
    .line 104
    new-instance v0, Lcom/googlecode/mp4parser/authoring/builder/b$b;

    .line 105
    .line 106
    const/4 v9, 0x0

    .line 107
    move-object v3, v0

    .line 108
    move-object v4, p0

    .line 109
    move-object v5, p1

    .line 110
    invoke-direct/range {v3 .. v9}, Lcom/googlecode/mp4parser/authoring/builder/b$b;-><init>(Lcom/googlecode/mp4parser/authoring/builder/b;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;JLcom/googlecode/mp4parser/authoring/builder/b$b;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/builder/b$b;->b()J

    .line 117
    .line 118
    .line 119
    move-result-wide v3

    .line 120
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->a:Ljava/util/Set;

    .line 121
    .line 122
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-nez p1, :cond_6

    .line 131
    .line 132
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->b:Ljava/util/Set;

    .line 133
    .line 134
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-nez v0, :cond_1

    .line 143
    .line 144
    return-object v1

    .line 145
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/mp4parser/iso14496/part12/b;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/a;->getSize()J

    .line 152
    .line 153
    .line 154
    move-result-wide v3

    .line 155
    const-wide/16 v5, 0x2c

    .line 156
    .line 157
    add-long/2addr v3, v5

    .line 158
    move-object v6, v0

    .line 159
    :goto_5
    move-object v5, v6

    .line 160
    check-cast v5, Lcom/coremedia/iso/boxes/d;

    .line 161
    .line 162
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/d;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 163
    .line 164
    .line 165
    move-result-object v7

    .line 166
    invoke-interface {v7}, Lcom/coremedia/iso/boxes/j;->l()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v5

    .line 170
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-nez v5, :cond_2

    .line 179
    .line 180
    goto :goto_7

    .line 181
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lcom/coremedia/iso/boxes/d;

    .line 186
    .line 187
    if-ne v5, v6, :cond_5

    .line 188
    .line 189
    :goto_7
    instance-of v5, v7, Lcom/coremedia/iso/boxes/d;

    .line 190
    .line 191
    if-nez v5, :cond_4

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/mp4parser/iso14496/part12/b;->x()[J

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const/4 v6, 0x0

    .line 198
    :goto_8
    array-length v7, v5

    .line 199
    if-lt v6, v7, :cond_3

    .line 200
    .line 201
    invoke-virtual {v0, v5}, Lcom/mp4parser/iso14496/part12/b;->A([J)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :cond_3
    aget-wide v7, v5, v6

    .line 206
    .line 207
    add-long/2addr v7, v3

    .line 208
    aput-wide v7, v5, v6

    .line 209
    .line 210
    add-int/lit8 v6, v6, 0x1

    .line 211
    .line 212
    goto :goto_8

    .line 213
    :cond_4
    move-object v6, v7

    .line 214
    goto :goto_5

    .line 215
    :cond_5
    invoke-interface {v5}, Lcom/coremedia/iso/boxes/d;->getSize()J

    .line 216
    .line 217
    .line 218
    move-result-wide v9

    .line 219
    add-long/2addr v3, v9

    .line 220
    goto :goto_6

    .line 221
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    check-cast p1, Lcom/coremedia/iso/boxes/z0;

    .line 226
    .line 227
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/z0;->v()[J

    .line 228
    .line 229
    .line 230
    move-result-object v9

    .line 231
    const/4 p1, 0x0

    .line 232
    :goto_9
    array-length v0, v9

    .line 233
    if-lt p1, v0, :cond_7

    .line 234
    .line 235
    goto :goto_3

    .line 236
    :cond_7
    aget-wide v6, v9, p1

    .line 237
    .line 238
    add-long/2addr v6, v3

    .line 239
    aput-wide v6, v9, p1

    .line 240
    .line 241
    add-int/lit8 p1, p1, 0x1

    .line 242
    .line 243
    goto :goto_9

    .line 244
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v3

    .line 248
    check-cast v3, Lcom/coremedia/iso/boxes/t0;

    .line 249
    .line 250
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/t0;->y()[J

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    invoke-static {v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->x([J)J

    .line 255
    .line 256
    .line 257
    move-result-wide v3

    .line 258
    add-long/2addr v7, v3

    .line 259
    goto/16 :goto_2

    .line 260
    .line 261
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    check-cast v0, Lcom/googlecode/mp4parser/authoring/h;

    .line 266
    .line 267
    invoke-virtual {p0, v0, p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->s(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)[I

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto/16 :goto_1

    .line 275
    .line 276
    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Lcom/googlecode/mp4parser/authoring/h;

    .line 281
    .line 282
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {p0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->u(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/List;)Ljava/util/List;

    .line 287
    .line 288
    .line 289
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    new-array v5, v4, [J

    .line 294
    .line 295
    :goto_a
    if-lt v2, v4, :cond_b

    .line 296
    .line 297
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->d:Ljava/util/HashMap;

    .line 298
    .line 299
    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_b
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    check-cast v6, Lcom/googlecode/mp4parser/authoring/f;

    .line 309
    .line 310
    invoke-interface {v6}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    .line 311
    .line 312
    .line 313
    move-result-wide v6

    .line 314
    aput-wide v6, v5, v2

    .line 315
    .line 316
    add-int/lit8 v2, v2, 0x1

    .line 317
    .line 318
    goto :goto_a
.end method

.method protected b(Lcom/googlecode/mp4parser/authoring/tracks/g;Lcom/coremedia/iso/boxes/u0;[I)V
    .locals 16

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v1, p3

    .line 4
    .line 5
    new-instance v2, Lcom/mp4parser/iso14496/part12/c;

    .line 6
    .line 7
    invoke-direct {v2}, Lcom/mp4parser/iso14496/part12/c;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "cenc"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lcom/mp4parser/iso14496/part12/c;->B(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-virtual {v2, v3}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/tracks/g;->b0()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/tracks/g;->V()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    new-array v6, v4, [S

    .line 34
    .line 35
    const/4 v7, 0x0

    .line 36
    :goto_0
    if-lt v7, v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {v2, v6}, Lcom/mp4parser/iso14496/part12/c;->F([S)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    check-cast v8, Lcom/mp4parser/iso23001/part7/a;

    .line 47
    .line 48
    invoke-virtual {v8}, Lcom/mp4parser/iso23001/part7/a;->b()I

    .line 49
    .line 50
    .line 51
    move-result v8

    .line 52
    int-to-short v8, v8

    .line 53
    aput-short v8, v6, v7

    .line 54
    .line 55
    add-int/lit8 v7, v7, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v4, 0x8

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Lcom/mp4parser/iso14496/part12/c;->D(I)V

    .line 61
    .line 62
    .line 63
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-virtual {v2, v4}, Lcom/mp4parser/iso14496/part12/c;->E(I)V

    .line 72
    .line 73
    .line 74
    :goto_1
    new-instance v4, Lcom/mp4parser/iso14496/part12/b;

    .line 75
    .line 76
    invoke-direct {v4}, Lcom/mp4parser/iso14496/part12/b;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v6, Lcom/googlecode/mp4parser/boxes/dece/d;

    .line 80
    .line 81
    invoke-direct {v6}, Lcom/googlecode/mp4parser/boxes/dece/d;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/tracks/g;->V()Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v6, v7}, Lcom/googlecode/mp4parser/boxes/b;->C(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v3}, Lcom/googlecode/mp4parser/boxes/b;->B(Ljava/util/List;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/boxes/b;->x()I

    .line 95
    .line 96
    .line 97
    move-result v7

    .line 98
    int-to-long v7, v7

    .line 99
    array-length v9, v1

    .line 100
    new-array v9, v9, [J

    .line 101
    .line 102
    const/4 v10, 0x0

    .line 103
    const/4 v11, 0x0

    .line 104
    :goto_2
    array-length v12, v1

    .line 105
    if-lt v10, v12, :cond_2

    .line 106
    .line 107
    invoke-virtual {v4, v9}, Lcom/mp4parser/iso14496/part12/b;->A([J)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v6}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 117
    .line 118
    .line 119
    move-object/from16 v12, p0

    .line 120
    .line 121
    iget-object v0, v12, Lcom/googlecode/mp4parser/authoring/builder/b;->b:Ljava/util/Set;

    .line 122
    .line 123
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    return-void

    .line 127
    :cond_2
    move-object/from16 v12, p0

    .line 128
    .line 129
    aput-wide v7, v9, v10

    .line 130
    .line 131
    const/4 v13, 0x0

    .line 132
    :goto_3
    aget v14, v1, v10

    .line 133
    .line 134
    if-lt v13, v14, :cond_3

    .line 135
    .line 136
    add-int/lit8 v10, v10, 0x1

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_3
    add-int/lit8 v14, v11, 0x1

    .line 140
    .line 141
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v11

    .line 145
    check-cast v11, Lcom/mp4parser/iso23001/part7/a;

    .line 146
    .line 147
    invoke-virtual {v11}, Lcom/mp4parser/iso23001/part7/a;->b()I

    .line 148
    .line 149
    .line 150
    move-result v11

    .line 151
    move-object v15, v6

    .line 152
    int-to-long v5, v11

    .line 153
    add-long/2addr v7, v5

    .line 154
    add-int/lit8 v13, v13, 0x1

    .line 155
    .line 156
    move v11, v14

    .line 157
    move-object v6, v15

    .line 158
    goto :goto_3
.end method

.method protected c(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->E()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lcom/coremedia/iso/boxes/i;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/i;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/i;->x(Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method protected d(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 12

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    new-instance v0, Lcom/coremedia/iso/boxes/r;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/r;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 24
    .line 25
    .line 26
    new-instance v9, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 36
    .line 37
    .line 38
    move-result-object v10

    .line 39
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v0, v9}, Lcom/coremedia/iso/boxes/r;->w(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    new-instance p1, Lcom/coremedia/iso/boxes/q;

    .line 49
    .line 50
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/q;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 54
    .line 55
    .line 56
    return-object p1

    .line 57
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lcom/googlecode/mp4parser/authoring/c;

    .line 62
    .line 63
    new-instance v11, Lcom/coremedia/iso/boxes/r$a;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/c;->c()D

    .line 66
    .line 67
    .line 68
    move-result-wide v2

    .line 69
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/d;->e()J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    long-to-double v4, v4

    .line 74
    mul-double v2, v2, v4

    .line 75
    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/c;->b()J

    .line 81
    .line 82
    .line 83
    move-result-wide v5

    .line 84
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 89
    .line 90
    .line 91
    move-result-wide v7

    .line 92
    mul-long v5, v5, v7

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/c;->d()J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    div-long/2addr v5, v7

    .line 99
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/c;->a()D

    .line 100
    .line 101
    .line 102
    move-result-wide v7

    .line 103
    move-object v1, v11

    .line 104
    move-object v2, v0

    .line 105
    invoke-direct/range {v1 .. v8}, Lcom/coremedia/iso/boxes/r$a;-><init>(Lcom/coremedia/iso/boxes/r;JJD)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    const/4 p1, 0x0

    .line 113
    return-object p1
.end method

.method protected e(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/s;
    .locals 4

    .line 1
    new-instance p1, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "isom"

    .line 7
    .line 8
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    const-string v1, "iso2"

    .line 12
    .line 13
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    const-string v1, "avc1"

    .line 17
    .line 18
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/coremedia/iso/boxes/s;

    .line 22
    .line 23
    const-wide/16 v2, 0x0

    .line 24
    .line 25
    invoke-direct {v1, v0, v2, v3, p1}, Lcom/coremedia/iso/boxes/s;-><init>(Ljava/lang/String;JLjava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-object v1
.end method

.method protected f(Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;)Lcom/coremedia/iso/boxes/h0;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[I>;)",
            "Lcom/coremedia/iso/boxes/h0;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/h0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/coremedia/iso/boxes/i0;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/i0;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Ljava/util/Date;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->J(Ljava/util/Date;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Ljava/util/Date;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->N(Ljava/util/Date;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/d;->c()Lcom/googlecode/mp4parser/util/l;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/i0;->M(Lcom/googlecode/mp4parser/util/l;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->t(Lcom/googlecode/mp4parser/authoring/d;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    const-wide/16 v7, 0x0

    .line 47
    .line 48
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-nez v9, :cond_5

    .line 53
    .line 54
    invoke-virtual {v1, v7, v8}, Lcom/coremedia/iso/boxes/i0;->L(J)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2, v3}, Lcom/coremedia/iso/boxes/i0;->V(J)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v9

    .line 68
    const-wide/16 v5, 0x0

    .line 69
    .line 70
    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_4

    .line 75
    .line 76
    const-wide/16 v2, 0x1

    .line 77
    .line 78
    add-long/2addr v5, v2

    .line 79
    invoke-virtual {v1, v5, v6}, Lcom/coremedia/iso/boxes/i0;->O(J)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-nez v1, :cond_3

    .line 98
    .line 99
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->q(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 106
    .line 107
    .line 108
    :cond_2
    return-object v0

    .line 109
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lcom/googlecode/mp4parser/authoring/h;

    .line 114
    .line 115
    move-object/from16 v10, p0

    .line 116
    .line 117
    move-object/from16 v11, p1

    .line 118
    .line 119
    move-object/from16 v12, p2

    .line 120
    .line 121
    invoke-virtual {v10, v1, v11, v12}, Lcom/googlecode/mp4parser/authoring/builder/b;->p(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;)Lcom/coremedia/iso/boxes/f1;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    move-object/from16 v10, p0

    .line 130
    .line 131
    move-object/from16 v11, p1

    .line 132
    .line 133
    move-object/from16 v12, p2

    .line 134
    .line 135
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/googlecode/mp4parser/authoring/h;

    .line 140
    .line 141
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    cmp-long v7, v5, v3

    .line 150
    .line 151
    if-gez v7, :cond_1

    .line 152
    .line 153
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 158
    .line 159
    .line 160
    move-result-wide v2

    .line 161
    move-wide v5, v2

    .line 162
    goto :goto_1

    .line 163
    :cond_5
    move-object/from16 v10, p0

    .line 164
    .line 165
    move-object/from16 v11, p1

    .line 166
    .line 167
    move-object/from16 v12, p2

    .line 168
    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v9

    .line 173
    check-cast v9, Lcom/googlecode/mp4parser/authoring/h;

    .line 174
    .line 175
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    if-eqz v13, :cond_8

    .line 180
    .line 181
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v13

    .line 185
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result v13

    .line 189
    if-eqz v13, :cond_6

    .line 190
    .line 191
    goto :goto_4

    .line 192
    :cond_6
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    const-wide/16 v14, 0x0

    .line 201
    .line 202
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 203
    .line 204
    .line 205
    move-result v9

    .line 206
    if-nez v9, :cond_7

    .line 207
    .line 208
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->t(Lcom/googlecode/mp4parser/authoring/d;)J

    .line 209
    .line 210
    .line 211
    move-result-wide v16

    .line 212
    mul-long v14, v14, v16

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v9

    .line 219
    check-cast v9, Lcom/googlecode/mp4parser/authoring/c;

    .line 220
    .line 221
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/authoring/c;->c()D

    .line 222
    .line 223
    .line 224
    move-result-wide v5

    .line 225
    double-to-long v5, v5

    .line 226
    add-long/2addr v14, v5

    .line 227
    goto :goto_3

    .line 228
    :cond_8
    :goto_4
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    .line 229
    .line 230
    .line 231
    move-result-wide v5

    .line 232
    invoke-virtual/range {p0 .. p1}, Lcom/googlecode/mp4parser/authoring/builder/b;->t(Lcom/googlecode/mp4parser/authoring/d;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v13

    .line 236
    mul-long v5, v5, v13

    .line 237
    .line 238
    invoke-interface {v9}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 239
    .line 240
    .line 241
    move-result-object v9

    .line 242
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 243
    .line 244
    .line 245
    move-result-wide v13

    .line 246
    div-long v14, v5, v13

    .line 247
    .line 248
    :goto_5
    cmp-long v5, v14, v7

    .line 249
    .line 250
    if-lez v5, :cond_0

    .line 251
    .line 252
    move-wide v7, v14

    .line 253
    goto/16 :goto_0
.end method

.method protected g(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/coremedia/iso/boxes/r0;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/r0;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/r0;->w(Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method protected h(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;)Lcom/coremedia/iso/boxes/d;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Lcom/googlecode/mp4parser/authoring/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[I>;)",
            "Lcom/coremedia/iso/boxes/d;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Lcom/coremedia/iso/boxes/u0;

    .line 8
    .line 9
    invoke-direct {v3}, Lcom/coremedia/iso/boxes/u0;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->k(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->n(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->c(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->l(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->g(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->j(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/Map;Lcom/coremedia/iso/boxes/u0;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->m(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 31
    .line 32
    .line 33
    move-object/from16 v4, p2

    .line 34
    .line 35
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->i(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;Lcom/coremedia/iso/boxes/u0;)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-nez v6, :cond_7

    .line 60
    .line 61
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-nez v4, :cond_1

    .line 74
    .line 75
    instance-of v4, v1, Lcom/googlecode/mp4parser/authoring/tracks/g;

    .line 76
    .line 77
    if-eqz v4, :cond_0

    .line 78
    .line 79
    move-object v4, v1

    .line 80
    check-cast v4, Lcom/googlecode/mp4parser/authoring/tracks/g;

    .line 81
    .line 82
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, [I

    .line 87
    .line 88
    invoke-virtual {v0, v4, v3, v2}, Lcom/googlecode/mp4parser/authoring/builder/b;->b(Lcom/googlecode/mp4parser/authoring/tracks/g;Lcom/coremedia/iso/boxes/u0;[I)V

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-virtual {v0, v1, v3}, Lcom/googlecode/mp4parser/authoring/builder/b;->o(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 92
    .line 93
    .line 94
    return-object v3

    .line 95
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    move-object v7, v4

    .line 100
    check-cast v7, Ljava/util/Map$Entry;

    .line 101
    .line 102
    new-instance v8, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;

    .line 103
    .line 104
    invoke-direct {v8}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/String;

    .line 112
    .line 113
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    check-cast v5, Ljava/util/List;

    .line 118
    .line 119
    invoke-virtual {v8, v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->z(Ljava/util/List;)V

    .line 120
    .line 121
    .line 122
    new-instance v9, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;

    .line 123
    .line 124
    invoke-direct {v9}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v9, v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->z(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    const/4 v10, 0x0

    .line 131
    const/4 v4, 0x0

    .line 132
    move-object v11, v4

    .line 133
    const/4 v12, 0x0

    .line 134
    :goto_2
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-lt v12, v4, :cond_2

    .line 143
    .line 144
    invoke-virtual {v3, v8}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v3, v9}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_2
    const/4 v4, 0x0

    .line 152
    const/4 v5, 0x0

    .line 153
    :goto_3
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v13

    .line 157
    check-cast v13, Ljava/util/List;

    .line 158
    .line 159
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v13

    .line 163
    if-lt v4, v13, :cond_5

    .line 164
    .line 165
    const-wide/16 v13, 0x1

    .line 166
    .line 167
    if-eqz v11, :cond_4

    .line 168
    .line 169
    invoke-virtual {v11}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;->a()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    if-eq v4, v5, :cond_3

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :cond_3
    invoke-virtual {v11}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;->b()J

    .line 177
    .line 178
    .line 179
    move-result-wide v4

    .line 180
    add-long/2addr v4, v13

    .line 181
    invoke-virtual {v11, v4, v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;->d(J)V

    .line 182
    .line 183
    .line 184
    goto :goto_5

    .line 185
    :cond_4
    :goto_4
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;

    .line 186
    .line 187
    invoke-direct {v4, v13, v14, v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;-><init>(JI)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->v()Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-object v11, v4

    .line 198
    :goto_5
    add-int/lit8 v12, v12, 0x1

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_5
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object v13

    .line 205
    check-cast v13, Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v13

    .line 211
    check-cast v13, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 212
    .line 213
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    check-cast v13, [J

    .line 222
    .line 223
    int-to-long v14, v12

    .line 224
    invoke-static {v13, v14, v15}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 225
    .line 226
    .line 227
    move-result v13

    .line 228
    if-ltz v13, :cond_6

    .line 229
    .line 230
    add-int/lit8 v5, v4, 0x1

    .line 231
    .line 232
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 233
    .line 234
    goto :goto_3

    .line 235
    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    check-cast v6, Ljava/util/Map$Entry;

    .line 240
    .line 241
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v7

    .line 245
    check-cast v7, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 246
    .line 247
    invoke-virtual {v7}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->getType()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v7

    .line 251
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    check-cast v8, Ljava/util/List;

    .line 256
    .line 257
    if-nez v8, :cond_8

    .line 258
    .line 259
    new-instance v8, Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .line 263
    .line 264
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    :cond_8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    check-cast v6, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 272
    .line 273
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    goto/16 :goto_0
.end method

.method protected i(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;Lcom/coremedia/iso/boxes/u0;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Lcom/googlecode/mp4parser/authoring/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[I>;",
            "Lcom/coremedia/iso/boxes/u0;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    check-cast v3, [I

    .line 12
    .line 13
    new-instance v4, Lcom/coremedia/iso/boxes/z0;

    .line 14
    .line 15
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/z0;-><init>()V

    .line 16
    .line 17
    .line 18
    iget-object v5, v0, Lcom/googlecode/mp4parser/authoring/builder/b;->a:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    array-length v5, v3

    .line 24
    new-array v5, v5, [J

    .line 25
    .line 26
    sget-object v6, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 27
    .line 28
    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    .line 29
    .line 30
    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const-string v7, "Calculating chunk offsets for track_"

    .line 35
    .line 36
    if-eqz v6, :cond_0

    .line 37
    .line 38
    sget-object v6, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 39
    .line 40
    new-instance v8, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v9}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 50
    .line 51
    .line 52
    move-result-wide v9

    .line 53
    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const/4 v10, 0x0

    .line 64
    const-wide/16 v11, 0x0

    .line 65
    .line 66
    :goto_0
    array-length v13, v3

    .line 67
    if-lt v10, v13, :cond_1

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Lcom/coremedia/iso/boxes/z0;->w([J)V

    .line 70
    .line 71
    .line 72
    move-object/from16 v13, p4

    .line 73
    .line 74
    invoke-virtual {v13, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_1
    move-object/from16 v13, p4

    .line 79
    .line 80
    sget-object v14, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 81
    .line 82
    sget-object v15, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    .line 83
    .line 84
    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    if-eqz v14, :cond_2

    .line 89
    .line 90
    sget-object v14, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 91
    .line 92
    new-instance v15, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v15, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 98
    .line 99
    .line 100
    move-result-object v16

    .line 101
    move-object/from16 v17, v7

    .line 102
    .line 103
    invoke-virtual/range {v16 .. v16}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 104
    .line 105
    .line 106
    move-result-wide v6

    .line 107
    invoke-virtual {v15, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    const-string v6, " chunk "

    .line 111
    .line 112
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v14, v6}, Ljava/util/logging/Logger;->finer(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    goto :goto_1

    .line 126
    :cond_2
    move-object/from16 v17, v7

    .line 127
    .line 128
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object v6

    .line 132
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-nez v7, :cond_3

    .line 141
    .line 142
    add-int/lit8 v10, v10, 0x1

    .line 143
    .line 144
    move-object/from16 v7, v17

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    check-cast v7, Lcom/googlecode/mp4parser/authoring/h;

    .line 152
    .line 153
    sget-object v14, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 154
    .line 155
    sget-object v15, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    .line 156
    .line 157
    invoke-virtual {v14, v15}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    .line 158
    .line 159
    .line 160
    move-result v14

    .line 161
    if-eqz v14, :cond_4

    .line 162
    .line 163
    sget-object v14, Lcom/googlecode/mp4parser/authoring/builder/b;->f:Ljava/util/logging/Logger;

    .line 164
    .line 165
    new-instance v15, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    const-string v8, "Adding offsets of track_"

    .line 168
    .line 169
    invoke-direct {v15, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-interface {v7}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 177
    .line 178
    .line 179
    move-result-wide v8

    .line 180
    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v14, v8}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    :cond_4
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    check-cast v8, [I

    .line 195
    .line 196
    const/4 v9, 0x0

    .line 197
    const-wide/16 v14, 0x0

    .line 198
    .line 199
    :goto_3
    if-lt v9, v10, :cond_7

    .line 200
    .line 201
    if-ne v7, v1, :cond_5

    .line 202
    .line 203
    aput-wide v11, v5, v10

    .line 204
    .line 205
    :cond_5
    invoke-static {v14, v15}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 206
    .line 207
    .line 208
    move-result v9

    .line 209
    :goto_4
    int-to-long v1, v9

    .line 210
    move-object/from16 v16, v3

    .line 211
    .line 212
    aget v3, v8, v10

    .line 213
    .line 214
    move-object/from16 v18, v4

    .line 215
    .line 216
    int-to-long v3, v3

    .line 217
    add-long/2addr v3, v14

    .line 218
    cmp-long v19, v1, v3

    .line 219
    .line 220
    if-ltz v19, :cond_6

    .line 221
    .line 222
    move-object/from16 v1, p1

    .line 223
    .line 224
    move-object/from16 v2, p3

    .line 225
    .line 226
    move-object/from16 v3, v16

    .line 227
    .line 228
    move-object/from16 v4, v18

    .line 229
    .line 230
    goto :goto_2

    .line 231
    :cond_6
    iget-object v1, v0, Lcom/googlecode/mp4parser/authoring/builder/b;->d:Ljava/util/HashMap;

    .line 232
    .line 233
    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    check-cast v1, [J

    .line 238
    .line 239
    aget-wide v2, v1, v9

    .line 240
    .line 241
    add-long/2addr v11, v2

    .line 242
    add-int/lit8 v9, v9, 0x1

    .line 243
    .line 244
    move-object/from16 v3, v16

    .line 245
    .line 246
    move-object/from16 v4, v18

    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_7
    move-object/from16 v16, v3

    .line 250
    .line 251
    move-object/from16 v18, v4

    .line 252
    .line 253
    aget v1, v8, v9

    .line 254
    .line 255
    int-to-long v1, v1

    .line 256
    add-long/2addr v14, v1

    .line 257
    add-int/lit8 v9, v9, 0x1

    .line 258
    .line 259
    move-object/from16 v1, p1

    .line 260
    .line 261
    move-object/from16 v2, p3

    .line 262
    .line 263
    goto :goto_3
.end method

.method protected j(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/Map;Lcom/coremedia/iso/boxes/u0;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[I>;",
            "Lcom/coremedia/iso/boxes/u0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, [I

    .line 6
    .line 7
    new-instance p2, Lcom/coremedia/iso/boxes/v0;

    .line 8
    .line 9
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/v0;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v0, Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lcom/coremedia/iso/boxes/v0;->x(Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    const-wide/32 v0, -0x80000000

    .line 21
    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_0
    array-length v3, p1

    .line 25
    if-lt v2, v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {p3, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    aget v3, p1, v2

    .line 32
    .line 33
    int-to-long v3, v3

    .line 34
    cmp-long v5, v0, v3

    .line 35
    .line 36
    if-eqz v5, :cond_1

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/coremedia/iso/boxes/v0;->w()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Lcom/coremedia/iso/boxes/v0$a;

    .line 43
    .line 44
    add-int/lit8 v3, v2, 0x1

    .line 45
    .line 46
    int-to-long v4, v3

    .line 47
    aget v3, p1, v2

    .line 48
    .line 49
    int-to-long v6, v3

    .line 50
    const-wide/16 v8, 0x1

    .line 51
    .line 52
    move-object v3, v1

    .line 53
    invoke-direct/range {v3 .. v9}, Lcom/coremedia/iso/boxes/v0$a;-><init>(JJJ)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    aget v0, p1, v2

    .line 60
    .line 61
    int-to-long v0, v0

    .line 62
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 63
    .line 64
    goto :goto_0
.end method

.method protected k(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected l(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/coremedia/iso/boxes/c1;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/c1;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/c1;->w([J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method protected m(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/t0;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->d:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, [J

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/t0;->A([J)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method protected n(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    array-length v1, p1

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-lt v3, v1, :cond_0

    .line 14
    .line 15
    new-instance p1, Lcom/coremedia/iso/boxes/d1;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/d1;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/d1;->x(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    aget-wide v4, p1, v3

    .line 28
    .line 29
    const-wide/16 v6, 0x1

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/d1$a;->b()J

    .line 34
    .line 35
    .line 36
    move-result-wide v8

    .line 37
    cmp-long v10, v8, v4

    .line 38
    .line 39
    if-nez v10, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/d1$a;->a()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    add-long/2addr v4, v6

    .line 46
    invoke-virtual {v2, v4, v5}, Lcom/coremedia/iso/boxes/d1$a;->c(J)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v2, Lcom/coremedia/iso/boxes/d1$a;

    .line 51
    .line 52
    invoke-direct {v2, v6, v7, v4, v5}, Lcom/coremedia/iso/boxes/d1$a;-><init>(JJ)V

    .line 53
    .line 54
    .line 55
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0
.end method

.method protected o(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->S()Lcom/coremedia/iso/boxes/a1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->S()Lcom/coremedia/iso/boxes/a1;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method protected p(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;)Lcom/coremedia/iso/boxes/f1;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Lcom/googlecode/mp4parser/authoring/d;",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[I>;)",
            "Lcom/coremedia/iso/boxes/f1;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/f1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/f1;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/coremedia/iso/boxes/g1;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/g1;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->M(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->O(Z)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->Q(Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/g1;->P(Z)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->g()Lcom/googlecode/mp4parser/util/l;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->S(Lcom/googlecode/mp4parser/util/l;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->b()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->J(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->a()Ljava/util/Date;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->K(Ljava/util/Date;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    if-eqz v3, :cond_2

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_0

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_0
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-nez v6, :cond_1

    .line 89
    .line 90
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 95
    .line 96
    .line 97
    move-result-wide v6

    .line 98
    mul-long v4, v4, v6

    .line 99
    .line 100
    invoke-virtual {v1, v4, v5}, Lcom/coremedia/iso/boxes/g1;->L(J)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    check-cast v6, Lcom/googlecode/mp4parser/authoring/c;

    .line 109
    .line 110
    invoke-virtual {v6}, Lcom/googlecode/mp4parser/authoring/c;->c()D

    .line 111
    .line 112
    .line 113
    move-result-wide v6

    .line 114
    double-to-long v6, v6

    .line 115
    add-long/2addr v4, v6

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    .line 118
    .line 119
    .line 120
    move-result-wide v3

    .line 121
    invoke-virtual {p0, p2}, Lcom/googlecode/mp4parser/authoring/builder/b;->t(Lcom/googlecode/mp4parser/authoring/d;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v5

    .line 125
    mul-long v3, v3, v5

    .line 126
    .line 127
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 132
    .line 133
    .line 134
    move-result-wide v5

    .line 135
    div-long/2addr v3, v5

    .line 136
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/g1;->L(J)V

    .line 137
    .line 138
    .line 139
    :goto_2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->d()D

    .line 144
    .line 145
    .line 146
    move-result-wide v3

    .line 147
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/g1;->N(D)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->l()D

    .line 155
    .line 156
    .line 157
    move-result-wide v3

    .line 158
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/g1;->W(D)V

    .line 159
    .line 160
    .line 161
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->f()I

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->R(I)V

    .line 170
    .line 171
    .line 172
    new-instance v3, Ljava/util/Date;

    .line 173
    .line 174
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->T(Ljava/util/Date;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 185
    .line 186
    .line 187
    move-result-wide v3

    .line 188
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/g1;->U(J)V

    .line 189
    .line 190
    .line 191
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/authoring/i;->k()F

    .line 196
    .line 197
    .line 198
    move-result v3

    .line 199
    invoke-virtual {v1, v3}, Lcom/coremedia/iso/boxes/g1;->V(F)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/b;->d(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 210
    .line 211
    .line 212
    new-instance v1, Lcom/coremedia/iso/boxes/d0;

    .line 213
    .line 214
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/d0;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 218
    .line 219
    .line 220
    new-instance v3, Lcom/coremedia/iso/boxes/e0;

    .line 221
    .line 222
    invoke-direct {v3}, Lcom/coremedia/iso/boxes/e0;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 226
    .line 227
    .line 228
    move-result-object v4

    .line 229
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/i;->a()Ljava/util/Date;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/e0;->A(Ljava/util/Date;)V

    .line 234
    .line 235
    .line 236
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    .line 237
    .line 238
    .line 239
    move-result-wide v4

    .line 240
    invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/e0;->B(J)V

    .line 241
    .line 242
    .line 243
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 248
    .line 249
    .line 250
    move-result-wide v4

    .line 251
    invoke-virtual {v3, v4, v5}, Lcom/coremedia/iso/boxes/e0;->E(J)V

    .line 252
    .line 253
    .line 254
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/i;->e()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/e0;->C(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 266
    .line 267
    .line 268
    new-instance v3, Lcom/coremedia/iso/boxes/x;

    .line 269
    .line 270
    invoke-direct {v3}, Lcom/coremedia/iso/boxes/x;-><init>()V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 274
    .line 275
    .line 276
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    invoke-virtual {v3, v4}, Lcom/coremedia/iso/boxes/x;->y(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    new-instance v3, Lcom/coremedia/iso/boxes/f0;

    .line 284
    .line 285
    invoke-direct {v3}, Lcom/coremedia/iso/boxes/f0;-><init>()V

    .line 286
    .line 287
    .line 288
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    const-string v5, "vide"

    .line 293
    .line 294
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    if-eqz v4, :cond_3

    .line 299
    .line 300
    new-instance v4, Lcom/coremedia/iso/boxes/m1;

    .line 301
    .line 302
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/m1;-><init>()V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 306
    .line 307
    .line 308
    goto :goto_3

    .line 309
    :cond_3
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    const-string v5, "soun"

    .line 314
    .line 315
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v4

    .line 319
    if-eqz v4, :cond_4

    .line 320
    .line 321
    new-instance v4, Lcom/coremedia/iso/boxes/y0;

    .line 322
    .line 323
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/y0;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 327
    .line 328
    .line 329
    goto :goto_3

    .line 330
    :cond_4
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    const-string v5, "text"

    .line 335
    .line 336
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v4

    .line 340
    if-eqz v4, :cond_5

    .line 341
    .line 342
    new-instance v4, Lcom/coremedia/iso/boxes/j0;

    .line 343
    .line 344
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/j0;-><init>()V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 348
    .line 349
    .line 350
    goto :goto_3

    .line 351
    :cond_5
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v4

    .line 355
    const-string v5, "subt"

    .line 356
    .line 357
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 358
    .line 359
    .line 360
    move-result v4

    .line 361
    if-eqz v4, :cond_6

    .line 362
    .line 363
    new-instance v4, Lcom/coremedia/iso/boxes/b1;

    .line 364
    .line 365
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/b1;-><init>()V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_6
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v4

    .line 376
    const-string v5, "hint"

    .line 377
    .line 378
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    if-eqz v4, :cond_7

    .line 383
    .line 384
    new-instance v4, Lcom/coremedia/iso/boxes/y;

    .line 385
    .line 386
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/y;-><init>()V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 390
    .line 391
    .line 392
    goto :goto_3

    .line 393
    :cond_7
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v4

    .line 397
    const-string v5, "sbtl"

    .line 398
    .line 399
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v4

    .line 403
    if-eqz v4, :cond_8

    .line 404
    .line 405
    new-instance v4, Lcom/coremedia/iso/boxes/j0;

    .line 406
    .line 407
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/j0;-><init>()V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 411
    .line 412
    .line 413
    :cond_8
    :goto_3
    new-instance v4, Lcom/coremedia/iso/boxes/n;

    .line 414
    .line 415
    invoke-direct {v4}, Lcom/coremedia/iso/boxes/n;-><init>()V

    .line 416
    .line 417
    .line 418
    new-instance v5, Lcom/coremedia/iso/boxes/o;

    .line 419
    .line 420
    invoke-direct {v5}, Lcom/coremedia/iso/boxes/o;-><init>()V

    .line 421
    .line 422
    .line 423
    invoke-virtual {v4, v5}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 424
    .line 425
    .line 426
    new-instance v6, Lcom/coremedia/iso/boxes/l;

    .line 427
    .line 428
    invoke-direct {v6}, Lcom/coremedia/iso/boxes/l;-><init>()V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v6, v2}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {v5, v6}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 438
    .line 439
    .line 440
    invoke-virtual {p0, p1, p2, p3}, Lcom/googlecode/mp4parser/authoring/builder/b;->h(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;Ljava/util/Map;)Lcom/coremedia/iso/boxes/d;

    .line 441
    .line 442
    .line 443
    move-result-object p1

    .line 444
    invoke-virtual {v3, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1, v3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 448
    .line 449
    .line 450
    return-object v0
.end method

.method protected q(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method s(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)[I
    .locals 10

    .line 1
    iget-object p2, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->e:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 2
    .line 3
    invoke-interface {p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/c;->a(Lcom/googlecode/mp4parser/authoring/h;)[J

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    array-length v0, p2

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p2

    .line 12
    if-lt v1, v2, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    aget-wide v2, p2, v1

    .line 16
    .line 17
    const-wide/16 v4, 0x1

    .line 18
    .line 19
    sub-long/2addr v2, v4

    .line 20
    array-length v6, p2

    .line 21
    add-int/lit8 v7, v1, 0x1

    .line 22
    .line 23
    if-ne v6, v7, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    int-to-long v4, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    aget-wide v8, p2, v7

    .line 36
    .line 37
    sub-long v4, v8, v4

    .line 38
    .line 39
    :goto_1
    sub-long/2addr v4, v2

    .line 40
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    aput v2, v0, v1

    .line 45
    .line 46
    move v1, v7

    .line 47
    goto :goto_0
.end method

.method public t(Lcom/googlecode/mp4parser/authoring/d;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/googlecode/mp4parser/authoring/h;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_0

    .line 36
    .line 37
    return-wide v0

    .line 38
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/googlecode/mp4parser/authoring/h;

    .line 43
    .line 44
    invoke-interface {v2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3, v0, v1}, Lcom/googlecode/mp4parser/authoring/builder/b;->r(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    goto :goto_0
.end method

.method protected u(Lcom/googlecode/mp4parser/authoring/h;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    return-object p1
.end method

.method public v(Lcom/googlecode/mp4parser/authoring/builder/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/b;->e:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 2
    .line 3
    return-void
.end method
