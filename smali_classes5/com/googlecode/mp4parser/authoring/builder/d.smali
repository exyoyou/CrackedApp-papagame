.class public Lcom/googlecode/mp4parser/authoring/builder/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/builder/e;


# static fields
.field private static final b:Ljava/util/logging/Logger;

.field static final synthetic c:Z


# instance fields
.field protected a:Lcom/googlecode/mp4parser/authoring/builder/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/googlecode/mp4parser/authoring/builder/d;

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
    sput-object v0, Lcom/googlecode/mp4parser/authoring/builder/d;->b:Ljava/util/logging/Logger;

    .line 12
    .line 13
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

.method private I(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)J
    .locals 4

    .line 1
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->e()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    mul-long v0, v0, v2

    .line 10
    .line 11
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    div-long/2addr v0, p1

    .line 20
    return-wide v0
.end method


# virtual methods
.method protected A(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/c;)V
    .locals 16

    .line 1
    move-wide/from16 v8, p1

    .line 2
    .line 3
    move-object/from16 v10, p5

    .line 4
    .line 5
    new-instance v11, Lcom/coremedia/iso/boxes/fragment/k;

    .line 6
    .line 7
    invoke-direct {v11}, Lcom/coremedia/iso/boxes/fragment/k;-><init>()V

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p7

    .line 11
    .line 12
    invoke-virtual {v0, v11}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 13
    .line 14
    .line 15
    move-object/from16 v0, p0

    .line 16
    .line 17
    move-wide/from16 v1, p1

    .line 18
    .line 19
    move-wide/from16 v3, p3

    .line 20
    .line 21
    move-object/from16 v5, p5

    .line 22
    .line 23
    move/from16 v6, p6

    .line 24
    .line 25
    move-object v7, v11

    .line 26
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->x(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/k;)V

    .line 27
    .line 28
    .line 29
    move-object/from16 v12, p0

    .line 30
    .line 31
    invoke-virtual {v12, v8, v9, v10, v11}, Lcom/googlecode/mp4parser/authoring/builder/d;->w(JLcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/fragment/k;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->D(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/k;)V

    .line 35
    .line 36
    .line 37
    instance-of v0, v10, Lcom/googlecode/mp4parser/authoring/tracks/g;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    move-object v13, v10

    .line 42
    check-cast v13, Lcom/googlecode/mp4parser/authoring/tracks/g;

    .line 43
    .line 44
    move-object/from16 v0, p0

    .line 45
    .line 46
    move-wide/from16 v1, p1

    .line 47
    .line 48
    move-wide/from16 v3, p3

    .line 49
    .line 50
    move-object v5, v13

    .line 51
    move/from16 v6, p6

    .line 52
    .line 53
    move-object v7, v11

    .line 54
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->s(JJLcom/googlecode/mp4parser/authoring/tracks/g;ILcom/coremedia/iso/boxes/fragment/k;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->t(JJLcom/googlecode/mp4parser/authoring/tracks/g;ILcom/coremedia/iso/boxes/fragment/k;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->r(JJLcom/googlecode/mp4parser/authoring/tracks/g;ILcom/coremedia/iso/boxes/fragment/k;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 64
    .line 65
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_7

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_1

    .line 99
    .line 100
    return-void

    .line 101
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v3, v0

    .line 106
    check-cast v3, Ljava/util/Map$Entry;

    .line 107
    .line 108
    new-instance v4, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;

    .line 109
    .line 110
    invoke-direct {v4}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Ljava/lang/String;

    .line 118
    .line 119
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Ljava/util/List;

    .line 124
    .line 125
    invoke-virtual {v4, v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/e;->z(Ljava/util/List;)V

    .line 126
    .line 127
    .line 128
    new-instance v5, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;

    .line 129
    .line 130
    invoke-direct {v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v5, v0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->z(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-wide/16 v6, 0x1

    .line 137
    .line 138
    sub-long v0, v8, v6

    .line 139
    .line 140
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    const/4 v1, 0x0

    .line 145
    move v13, v0

    .line 146
    move-object v14, v1

    .line 147
    :goto_2
    sub-long v0, p3, v6

    .line 148
    .line 149
    invoke-static {v0, v1}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-lt v13, v0, :cond_2

    .line 154
    .line 155
    invoke-virtual {v11, v4}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v11, v5}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_2
    const/4 v0, 0x0

    .line 163
    const/4 v1, 0x0

    .line 164
    :goto_3
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    check-cast v15, Ljava/util/List;

    .line 169
    .line 170
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 171
    .line 172
    .line 173
    move-result v15

    .line 174
    if-lt v0, v15, :cond_5

    .line 175
    .line 176
    if-eqz v14, :cond_4

    .line 177
    .line 178
    invoke-virtual {v14}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;->a()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-eq v0, v1, :cond_3

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_3
    invoke-virtual {v14}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;->b()J

    .line 186
    .line 187
    .line 188
    move-result-wide v0

    .line 189
    add-long/2addr v0, v6

    .line 190
    invoke-virtual {v14, v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;->d(J)V

    .line 191
    .line 192
    .line 193
    goto :goto_5

    .line 194
    :cond_4
    :goto_4
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;

    .line 195
    .line 196
    invoke-direct {v0, v6, v7, v1}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f$a;-><init>(JI)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/f;->v()Ljava/util/List;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-object v14, v0

    .line 207
    :goto_5
    add-int/lit8 v13, v13, 0x1

    .line 208
    .line 209
    goto :goto_2

    .line 210
    :cond_5
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v15

    .line 214
    check-cast v15, Ljava/util/List;

    .line 215
    .line 216
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v15

    .line 220
    check-cast v15, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 221
    .line 222
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-interface {v6, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    check-cast v6, [J

    .line 231
    .line 232
    move v15, v1

    .line 233
    move-object v7, v2

    .line 234
    int-to-long v1, v13

    .line 235
    invoke-static {v6, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    if-ltz v1, :cond_6

    .line 240
    .line 241
    add-int/lit8 v1, v0, 0x1

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_6
    move v1, v15

    .line 245
    :goto_6
    add-int/lit8 v0, v0, 0x1

    .line 246
    .line 247
    move-object v2, v7

    .line 248
    const-wide/16 v6, 0x1

    .line 249
    .line 250
    goto :goto_3

    .line 251
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Ljava/util/Map$Entry;

    .line 256
    .line 257
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 262
    .line 263
    invoke-virtual {v3}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->getType()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    check-cast v4, Ljava/util/List;

    .line 272
    .line 273
    if-nez v4, :cond_8

    .line 274
    .line 275
    new-instance v4, Ljava/util/ArrayList;

    .line 276
    .line 277
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .line 279
    .line 280
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    :cond_8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;

    .line 288
    .line 289
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    goto/16 :goto_0
.end method

.method protected B(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 3

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/d;->b:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Creating Track "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lcom/coremedia/iso/boxes/f1;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/f1;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->z(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/d;->c(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/d;->h(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method protected C(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;
    .locals 3

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/i;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/i;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/i;->F(J)V

    .line 15
    .line 16
    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/i;->B(J)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v0, 0x0

    .line 23
    .line 24
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/i;->C(J)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/fragment/i;->E(J)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/g;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/g;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "soun"

    .line 36
    .line 37
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    const-string v1, "subt"

    .line 48
    .line 49
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    :cond_0
    const/4 p2, 0x2

    .line 60
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/fragment/g;->k(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p2}, Lcom/coremedia/iso/boxes/fragment/g;->m(I)V

    .line 64
    .line 65
    .line 66
    :cond_1
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/fragment/i;->D(Lcom/coremedia/iso/boxes/fragment/g;)V

    .line 67
    .line 68
    .line 69
    return-object p1
.end method

.method protected D(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/k;)V
    .locals 18

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/n;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/d;->G(JJLcom/googlecode/mp4parser/authoring/h;I)[J

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/n;->L(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/n;->N(Z)V

    .line 18
    .line 19
    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 21
    .line 22
    sub-long v4, p3, p1

    .line 23
    .line 24
    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->E()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-lez v5, :cond_0

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    new-array v5, v5, [Lcom/coremedia/iso/boxes/i$a;

    .line 48
    .line 49
    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, [Lcom/coremedia/iso/boxes/i$a;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v4, 0x0

    .line 57
    :goto_0
    const/4 v5, 0x0

    .line 58
    if-eqz v4, :cond_1

    .line 59
    .line 60
    aget-object v6, v4, v5

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    const/4 v6, -0x1

    .line 68
    :goto_1
    int-to-long v6, v6

    .line 69
    const-wide/16 v8, 0x0

    .line 70
    .line 71
    cmp-long v10, v6, v8

    .line 72
    .line 73
    if-lez v10, :cond_2

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    const/4 v10, 0x0

    .line 78
    :goto_2
    invoke-virtual {v0, v10}, Lcom/coremedia/iso/boxes/fragment/n;->K(Z)V

    .line 79
    .line 80
    .line 81
    const-wide/16 v12, 0x1

    .line 82
    .line 83
    const/4 v14, 0x0

    .line 84
    :goto_3
    cmp-long v15, v12, p1

    .line 85
    .line 86
    if-ltz v15, :cond_c

    .line 87
    .line 88
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v12

    .line 92
    if-eqz v12, :cond_3

    .line 93
    .line 94
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v12

    .line 98
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v12, :cond_4

    .line 103
    .line 104
    :cond_3
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    if-eqz v12, :cond_5

    .line 109
    .line 110
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    array-length v12, v12

    .line 115
    if-nez v12, :cond_4

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_4
    const/4 v15, 0x1

    .line 119
    goto :goto_5

    .line 120
    :cond_5
    :goto_4
    const/4 v15, 0x0

    .line 121
    :goto_5
    invoke-virtual {v0, v15}, Lcom/coremedia/iso/boxes/fragment/n;->M(Z)V

    .line 122
    .line 123
    .line 124
    const/4 v12, 0x0

    .line 125
    :goto_6
    array-length v13, v2

    .line 126
    if-lt v12, v13, :cond_6

    .line 127
    .line 128
    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/fragment/n;->I(Ljava/util/List;)V

    .line 129
    .line 130
    .line 131
    move-object/from16 v13, p7

    .line 132
    .line 133
    invoke-virtual {v13, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 134
    .line 135
    .line 136
    return-void

    .line 137
    :cond_6
    move-object/from16 v13, p7

    .line 138
    .line 139
    new-instance v8, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 140
    .line 141
    invoke-direct {v8}, Lcom/coremedia/iso/boxes/fragment/n$a;-><init>()V

    .line 142
    .line 143
    .line 144
    aget-wide v10, v2, v12

    .line 145
    .line 146
    invoke-virtual {v8, v10, v11}, Lcom/coremedia/iso/boxes/fragment/n$a;->p(J)V

    .line 147
    .line 148
    .line 149
    if-eqz v15, :cond_a

    .line 150
    .line 151
    new-instance v9, Lcom/coremedia/iso/boxes/fragment/g;

    .line 152
    .line 153
    invoke-direct {v9}, Lcom/coremedia/iso/boxes/fragment/g;-><init>()V

    .line 154
    .line 155
    .line 156
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    if-eqz v10, :cond_7

    .line 161
    .line 162
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v10

    .line 166
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v10

    .line 170
    if-nez v10, :cond_7

    .line 171
    .line 172
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v10

    .line 180
    check-cast v10, Lcom/coremedia/iso/boxes/r0$a;

    .line 181
    .line 182
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/r0$a;->c()I

    .line 183
    .line 184
    .line 185
    move-result v11

    .line 186
    invoke-virtual {v9, v11}, Lcom/coremedia/iso/boxes/fragment/g;->k(I)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/r0$a;->e()I

    .line 190
    .line 191
    .line 192
    move-result v11

    .line 193
    invoke-virtual {v9, v11}, Lcom/coremedia/iso/boxes/fragment/g;->m(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v10}, Lcom/coremedia/iso/boxes/r0$a;->d()I

    .line 197
    .line 198
    .line 199
    move-result v10

    .line 200
    invoke-virtual {v9, v10}, Lcom/coremedia/iso/boxes/fragment/g;->l(I)V

    .line 201
    .line 202
    .line 203
    :cond_7
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    if-eqz v10, :cond_9

    .line 208
    .line 209
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 210
    .line 211
    .line 212
    move-result-object v10

    .line 213
    array-length v10, v10

    .line 214
    if-lez v10, :cond_9

    .line 215
    .line 216
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    move-object/from16 p6, v2

    .line 221
    .line 222
    int-to-long v1, v12

    .line 223
    add-long v1, p1, v1

    .line 224
    .line 225
    invoke-static {v10, v1, v2}, Ljava/util/Arrays;->binarySearch([JJ)I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-ltz v1, :cond_8

    .line 230
    .line 231
    invoke-virtual {v9, v5}, Lcom/coremedia/iso/boxes/fragment/g;->n(Z)V

    .line 232
    .line 233
    .line 234
    const/4 v1, 0x2

    .line 235
    invoke-virtual {v9, v1}, Lcom/coremedia/iso/boxes/fragment/g;->k(I)V

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :cond_8
    const/4 v1, 0x1

    .line 240
    invoke-virtual {v9, v1}, Lcom/coremedia/iso/boxes/fragment/g;->n(Z)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v1}, Lcom/coremedia/iso/boxes/fragment/g;->k(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_7

    .line 247
    :cond_9
    move-object/from16 p6, v2

    .line 248
    .line 249
    :goto_7
    invoke-virtual {v8, v9}, Lcom/coremedia/iso/boxes/fragment/n$a;->o(Lcom/coremedia/iso/boxes/fragment/g;)V

    .line 250
    .line 251
    .line 252
    goto :goto_8

    .line 253
    :cond_a
    move-object/from16 p6, v2

    .line 254
    .line 255
    :goto_8
    invoke-interface/range {p5 .. p5}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    int-to-long v9, v12

    .line 260
    add-long v9, p1, v9

    .line 261
    .line 262
    const-wide/16 v16, 0x1

    .line 263
    .line 264
    sub-long v9, v9, v16

    .line 265
    .line 266
    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    aget-wide v9, v1, v2

    .line 271
    .line 272
    invoke-virtual {v8, v9, v10}, Lcom/coremedia/iso/boxes/fragment/n$a;->n(J)V

    .line 273
    .line 274
    .line 275
    if-eqz v4, :cond_b

    .line 276
    .line 277
    aget-object v1, v4, v14

    .line 278
    .line 279
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/i$a;->b()I

    .line 280
    .line 281
    .line 282
    move-result v1

    .line 283
    invoke-virtual {v8, v1}, Lcom/coremedia/iso/boxes/fragment/n$a;->m(I)V

    .line 284
    .line 285
    .line 286
    sub-long v6, v6, v16

    .line 287
    .line 288
    const-wide/16 v1, 0x0

    .line 289
    .line 290
    cmp-long v9, v6, v1

    .line 291
    .line 292
    if-nez v9, :cond_b

    .line 293
    .line 294
    array-length v1, v4

    .line 295
    sub-int/2addr v1, v14

    .line 296
    const/4 v2, 0x1

    .line 297
    if-le v1, v2, :cond_b

    .line 298
    .line 299
    add-int/lit8 v14, v14, 0x1

    .line 300
    .line 301
    aget-object v1, v4, v14

    .line 302
    .line 303
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    int-to-long v1, v1

    .line 308
    move-wide v6, v1

    .line 309
    :cond_b
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    add-int/lit8 v12, v12, 0x1

    .line 313
    .line 314
    move-object/from16 v2, p6

    .line 315
    .line 316
    const/4 v1, 0x1

    .line 317
    const-wide/16 v8, 0x0

    .line 318
    .line 319
    goto/16 :goto_6

    .line 320
    .line 321
    :cond_c
    move-object/from16 p6, v2

    .line 322
    .line 323
    if-eqz v4, :cond_d

    .line 324
    .line 325
    const-wide/16 v1, 0x1

    .line 326
    .line 327
    sub-long/2addr v6, v1

    .line 328
    const-wide/16 v1, 0x0

    .line 329
    .line 330
    cmp-long v8, v6, v1

    .line 331
    .line 332
    if-nez v8, :cond_e

    .line 333
    .line 334
    array-length v8, v4

    .line 335
    sub-int/2addr v8, v14

    .line 336
    const/4 v9, 0x1

    .line 337
    if-le v8, v9, :cond_f

    .line 338
    .line 339
    add-int/lit8 v14, v14, 0x1

    .line 340
    .line 341
    aget-object v6, v4, v14

    .line 342
    .line 343
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/i$a;->a()I

    .line 344
    .line 345
    .line 346
    move-result v6

    .line 347
    int-to-long v6, v6

    .line 348
    goto :goto_9

    .line 349
    :cond_d
    const-wide/16 v1, 0x0

    .line 350
    .line 351
    :cond_e
    const/4 v9, 0x1

    .line 352
    :cond_f
    :goto_9
    const-wide/16 v10, 0x1

    .line 353
    .line 354
    add-long/2addr v12, v10

    .line 355
    move-wide v8, v1

    .line 356
    const/4 v1, 0x1

    .line 357
    move-object/from16 v2, p6

    .line 358
    .line 359
    goto/16 :goto_3
.end method

.method public E()Ljava/util/Date;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public F()Lcom/googlecode/mp4parser/authoring/builder/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/d;->a:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 2
    .line 3
    return-object v0
.end method

.method protected G(JJLcom/googlecode/mp4parser/authoring/h;I)[J
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p6}, Lcom/googlecode/mp4parser/authoring/builder/d;->H(JJLcom/googlecode/mp4parser/authoring/h;I)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    new-array p3, p2, [J

    .line 10
    .line 11
    const/4 p4, 0x0

    .line 12
    :goto_0
    if-lt p4, p2, :cond_0

    .line 13
    .line 14
    return-object p3

    .line 15
    :cond_0
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p5

    .line 19
    check-cast p5, Lcom/googlecode/mp4parser/authoring/f;

    .line 20
    .line 21
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/f;->getSize()J

    .line 22
    .line 23
    .line 24
    move-result-wide p5

    .line 25
    aput-wide p5, p3, p4

    .line 26
    .line 27
    add-int/lit8 p4, p4, 0x1

    .line 28
    .line 29
    goto :goto_0
.end method

.method protected H(JJLcom/googlecode/mp4parser/authoring/h;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "I)",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p5

    .line 5
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    add-int/lit8 p2, p2, -0x1

    .line 16
    .line 17
    invoke-interface {p5, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public J(Lcom/googlecode/mp4parser/authoring/builder/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/builder/d;->a:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 2
    .line 3
    return-void
.end method

.method protected K(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            ">;I",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[J>;)",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/h;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/googlecode/mp4parser/authoring/builder/d$a;

    .line 7
    .line 8
    invoke-direct {p1, p0, p3, p2}, Lcom/googlecode/mp4parser/authoring/builder/d$a;-><init>(Lcom/googlecode/mp4parser/authoring/builder/d;Ljava/util/Map;I)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public a(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/j;
    .locals 4

    .line 1
    sget-object v0, Lcom/googlecode/mp4parser/authoring/builder/d;->b:Ljava/util/logging/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v2, "Creating movie "

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/builder/d;->a:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/googlecode/mp4parser/authoring/h;

    .line 45
    .line 46
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "vide"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    move-object v0, v1

    .line 59
    :goto_0
    new-instance v1, Lcom/googlecode/mp4parser/authoring/builder/g;

    .line 60
    .line 61
    const/4 v2, -0x1

    .line 62
    invoke-direct {v1, p1, v0, v2}, Lcom/googlecode/mp4parser/authoring/builder/g;-><init>(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;I)V

    .line 63
    .line 64
    .line 65
    iput-object v1, p0, Lcom/googlecode/mp4parser/authoring/builder/d;->a:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 66
    .line 67
    :cond_2
    new-instance v0, Lcom/googlecode/mp4parser/d;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/googlecode/mp4parser/d;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->e(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->o(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->n(Lcom/googlecode/mp4parser/authoring/d;)Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-nez v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/googlecode/mp4parser/authoring/builder/d;->k(Lcom/googlecode/mp4parser/authoring/d;Lcom/coremedia/iso/boxes/j;)Lcom/coremedia/iso/boxes/d;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    check-cast v2, Lcom/coremedia/iso/boxes/d;

    .line 113
    .line 114
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 115
    .line 116
    .line 117
    goto :goto_1
.end method

.method protected b(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/n;
    .locals 2

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/n;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/n;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/coremedia/iso/boxes/o;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/o;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/coremedia/iso/boxes/l;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/l;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 24
    .line 25
    .line 26
    return-object p1
.end method

.method protected c(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
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

.method protected d(Ljava/util/List;Lcom/googlecode/mp4parser/authoring/h;[JII)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d;",
            ">;",
            "Lcom/googlecode/mp4parser/authoring/h;",
            "[JII)I"
        }
    .end annotation

    .line 1
    array-length v0, p3

    .line 2
    if-ge p4, v0, :cond_1

    .line 3
    .line 4
    aget-wide v8, p3, p4

    .line 5
    .line 6
    add-int/lit8 p4, p4, 0x1

    .line 7
    .line 8
    array-length v0, p3

    .line 9
    if-ge p4, v0, :cond_0

    .line 10
    .line 11
    aget-wide v0, p3, p4

    .line 12
    .line 13
    move-wide p3, v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    add-int/lit8 p3, p3, 0x1

    .line 24
    .line 25
    int-to-long p3, p3

    .line 26
    :goto_0
    cmp-long v0, v8, p3

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    move-object v1, p0

    .line 31
    move-wide v2, v8

    .line 32
    move-wide v4, p3

    .line 33
    move-object v6, p2

    .line 34
    move v7, p5

    .line 35
    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->m(JJLcom/googlecode/mp4parser/authoring/h;I)Lcom/coremedia/iso/boxes/d;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    add-int/lit8 v0, p5, 0x1

    .line 43
    .line 44
    invoke-virtual/range {v1 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->f(JJLcom/googlecode/mp4parser/authoring/h;I)Lcom/coremedia/iso/boxes/d;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move p5, v0

    .line 52
    :cond_1
    return p5
.end method

.method public e(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
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

.method protected f(JJLcom/googlecode/mp4parser/authoring/h;I)Lcom/coremedia/iso/boxes/d;
    .locals 9

    .line 1
    new-instance v8, Lcom/googlecode/mp4parser/authoring/builder/d$b;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    move-object v6, p5

    .line 8
    move v7, p6

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d$b;-><init>(Lcom/googlecode/mp4parser/authoring/builder/d;JJLcom/googlecode/mp4parser/authoring/h;I)V

    .line 10
    .line 11
    .line 12
    return-object v8
.end method

.method protected g(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;
    .locals 2

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/e0;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/e0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->a()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/e0;->A(Ljava/util/Date;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/d;->E()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/e0;->D(Ljava/util/Date;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/e0;->B(J)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->i()J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/e0;->E(J)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/i;->e()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/e0;->C(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-object p1
.end method

.method protected h(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 2

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/d0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/d0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->g(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/d;->i(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/googlecode/mp4parser/authoring/builder/d;->l(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method protected i(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 0

    .line 1
    new-instance p2, Lcom/coremedia/iso/boxes/x;

    .line 2
    .line 3
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/x;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p2, p1}, Lcom/coremedia/iso/boxes/x;->y(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-object p2
.end method

.method protected j(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/c;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/d;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/d;-><init>()V

    .line 4
    .line 5
    .line 6
    int-to-long p2, p6

    .line 7
    invoke-virtual {p1, p2, p3}, Lcom/coremedia/iso/boxes/fragment/d;->w(J)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p7, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method protected k(Lcom/googlecode/mp4parser/authoring/d;Lcom/coremedia/iso/boxes/j;)Lcom/coremedia/iso/boxes/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/f;

    .line 21
    .line 22
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/f;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/b;->getSize()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {p1, v1, v2}, Lcom/coremedia/iso/boxes/fragment/f;->w(J)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/googlecode/mp4parser/authoring/h;

    .line 41
    .line 42
    invoke-virtual {p0, v1, p2}, Lcom/googlecode/mp4parser/authoring/builder/d;->y(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/j;)Lcom/coremedia/iso/boxes/d;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0
.end method

.method protected l(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/f0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/f0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "vide"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/coremedia/iso/boxes/m1;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/m1;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "soun"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Lcom/coremedia/iso/boxes/y0;

    .line 40
    .line 41
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/y0;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const-string v2, "text"

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    new-instance v1, Lcom/coremedia/iso/boxes/j0;

    .line 61
    .line 62
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/j0;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const-string v2, "subt"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_3

    .line 80
    .line 81
    new-instance v1, Lcom/coremedia/iso/boxes/b1;

    .line 82
    .line 83
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/b1;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "hint"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    new-instance v1, Lcom/coremedia/iso/boxes/y;

    .line 103
    .line 104
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/y;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    invoke-interface {p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "sbtl"

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    new-instance v1, Lcom/coremedia/iso/boxes/j0;

    .line 124
    .line 125
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/j0;-><init>()V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 129
    .line 130
    .line 131
    :cond_5
    :goto_0
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->b(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/n;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->u(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 143
    .line 144
    .line 145
    return-object v0
.end method

.method protected m(JJLcom/googlecode/mp4parser/authoring/h;I)Lcom/coremedia/iso/boxes/d;
    .locals 9

    .line 1
    new-instance v8, Lcom/coremedia/iso/boxes/fragment/c;

    .line 2
    .line 3
    invoke-direct {v8}, Lcom/coremedia/iso/boxes/fragment/c;-><init>()V

    .line 4
    .line 5
    .line 6
    move-object v0, p0

    .line 7
    move-wide v1, p1

    .line 8
    move-wide v3, p3

    .line 9
    move-object v5, p5

    .line 10
    move v6, p6

    .line 11
    move-object v7, v8

    .line 12
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->j(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/c;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual/range {v0 .. v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->A(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/c;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/fragment/c;->J()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 p2, 0x0

    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/coremedia/iso/boxes/fragment/n;

    .line 28
    .line 29
    const/4 p2, 0x1

    .line 30
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/n;->G(I)V

    .line 31
    .line 32
    .line 33
    const-wide/16 p2, 0x8

    .line 34
    .line 35
    invoke-virtual {v8}, Lcom/googlecode/mp4parser/b;->getSize()J

    .line 36
    .line 37
    .line 38
    move-result-wide p4

    .line 39
    add-long/2addr p4, p2

    .line 40
    long-to-int p2, p4

    .line 41
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/n;->G(I)V

    .line 42
    .line 43
    .line 44
    return-object v8
.end method

.method protected n(Lcom/googlecode/mp4parser/authoring/d;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/googlecode/mp4parser/authoring/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v7, Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v9, 0x0

    .line 29
    :goto_1
    if-lt v9, v8, :cond_0

    .line 30
    .line 31
    return-object v6

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p0, v1, v9, v7}, Lcom/googlecode/mp4parser/authoring/builder/d;->K(Ljava/util/List;ILjava/util/Map;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    move v5, v0

    .line 45
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    add-int/lit8 v9, v9, 0x1

    .line 52
    .line 53
    move v0, v5

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move-object v2, v0

    .line 60
    check-cast v2, Lcom/googlecode/mp4parser/authoring/h;

    .line 61
    .line 62
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    move-object v3, v0

    .line 67
    check-cast v3, [J

    .line 68
    .line 69
    move-object v0, p0

    .line 70
    move-object v1, v6

    .line 71
    move v4, v9

    .line 72
    invoke-virtual/range {v0 .. v5}, Lcom/googlecode/mp4parser/authoring/builder/d;->d(Ljava/util/List;Lcom/googlecode/mp4parser/authoring/h;[JII)I

    .line 73
    .line 74
    .line 75
    move-result v5

    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Lcom/googlecode/mp4parser/authoring/h;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/googlecode/mp4parser/authoring/builder/d;->a:Lcom/googlecode/mp4parser/authoring/builder/c;

    .line 84
    .line 85
    invoke-interface {v3, v2}, Lcom/googlecode/mp4parser/authoring/builder/c;->a(Lcom/googlecode/mp4parser/authoring/h;)[J

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v7, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    array-length v2, v3

    .line 93
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    goto :goto_0
.end method

.method protected o(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/h0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/h0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->q(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->p(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/googlecode/mp4parser/authoring/h;

    .line 40
    .line 41
    invoke-virtual {p0, v2, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->B(Lcom/googlecode/mp4parser/authoring/h;Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0
.end method

.method protected p(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 8

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/a;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/coremedia/iso/boxes/fragment/b;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/coremedia/iso/boxes/fragment/b;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-nez v3, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    return-object v0

    .line 47
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/googlecode/mp4parser/authoring/h;

    .line 52
    .line 53
    invoke-virtual {p0, p1, v1}, Lcom/googlecode/mp4parser/authoring/builder/d;->C(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Lcom/googlecode/mp4parser/authoring/h;

    .line 66
    .line 67
    invoke-direct {p0, p1, v3}, Lcom/googlecode/mp4parser/authoring/builder/d;->I(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/b;->v()J

    .line 72
    .line 73
    .line 74
    move-result-wide v5

    .line 75
    cmp-long v7, v5, v3

    .line 76
    .line 77
    if-gez v7, :cond_0

    .line 78
    .line 79
    invoke-virtual {v1, v3, v4}, Lcom/coremedia/iso/boxes/fragment/b;->w(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_0
.end method

.method protected q(Lcom/googlecode/mp4parser/authoring/d;)Lcom/coremedia/iso/boxes/d;
    .locals 7

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/i0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/i0;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/d;->E()Ljava/util/Date;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/i0;->J(Ljava/util/Date;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/d;->E()Ljava/util/Date;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/i0;->N(Ljava/util/Date;)V

    .line 22
    .line 23
    .line 24
    const-wide/16 v1, 0x0

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/i0;->L(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->e()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    invoke-virtual {v0, v3, v4}, Lcom/coremedia/iso/boxes/i0;->V(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/authoring/d;->g()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    .line 50
    const-wide/16 v3, 0x1

    .line 51
    .line 52
    add-long/2addr v1, v3

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/i0;->O(J)V

    .line 54
    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lcom/googlecode/mp4parser/authoring/h;

    .line 62
    .line 63
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-virtual {v4}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 68
    .line 69
    .line 70
    move-result-wide v4

    .line 71
    cmp-long v6, v1, v4

    .line 72
    .line 73
    if-gez v6, :cond_0

    .line 74
    .line 75
    invoke-interface {v3}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 80
    .line 81
    .line 82
    move-result-wide v1

    .line 83
    goto :goto_0
.end method

.method protected r(JJLcom/googlecode/mp4parser/authoring/tracks/g;ILcom/coremedia/iso/boxes/fragment/k;)V
    .locals 3

    .line 1
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "enc.[0]/sinf[0]/schm[0]"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/coremedia/iso/boxes/x0;

    .line 12
    .line 13
    new-instance p1, Lcom/mp4parser/iso14496/part12/b;

    .line 14
    .line 15
    invoke-direct {p1}, Lcom/mp4parser/iso14496/part12/b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p7, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 19
    .line 20
    .line 21
    const-string p2, "cenc"

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lcom/mp4parser/iso14496/part12/b;->y(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 p2, 0x1

    .line 27
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p7}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const-wide/16 p4, 0x8

    .line 39
    .line 40
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result p6

    .line 44
    if-nez p6, :cond_0

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p6

    .line 51
    check-cast p6, Lcom/coremedia/iso/boxes/d;

    .line 52
    .line 53
    instance-of v0, p6, Lcom/googlecode/mp4parser/boxes/dece/d;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    check-cast p6, Lcom/googlecode/mp4parser/boxes/dece/d;

    .line 58
    .line 59
    invoke-virtual {p6}, Lcom/googlecode/mp4parser/boxes/b;->x()I

    .line 60
    .line 61
    .line 62
    move-result p3

    .line 63
    int-to-long v0, p3

    .line 64
    add-long/2addr p4, v0

    .line 65
    :goto_1
    invoke-virtual {p7}, Lcom/googlecode/mp4parser/b;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 66
    .line 67
    .line 68
    move-result-object p3

    .line 69
    check-cast p3, Lcom/coremedia/iso/boxes/fragment/c;

    .line 70
    .line 71
    const-wide/16 v0, 0x10

    .line 72
    .line 73
    add-long/2addr p4, v0

    .line 74
    invoke-virtual {p3}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result p3

    .line 86
    if-nez p3, :cond_1

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    check-cast p3, Lcom/coremedia/iso/boxes/d;

    .line 94
    .line 95
    if-ne p3, p7, :cond_2

    .line 96
    .line 97
    :goto_3
    new-array p2, p2, [J

    .line 98
    .line 99
    const/4 p3, 0x0

    .line 100
    aput-wide p4, p2, p3

    .line 101
    .line 102
    invoke-virtual {p1, p2}, Lcom/mp4parser/iso14496/part12/b;->A([J)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_2
    invoke-interface {p3}, Lcom/coremedia/iso/boxes/d;->getSize()J

    .line 107
    .line 108
    .line 109
    move-result-wide v1

    .line 110
    add-long/2addr p4, v1

    .line 111
    goto :goto_2

    .line 112
    :cond_3
    invoke-interface {p6}, Lcom/coremedia/iso/boxes/d;->getSize()J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    add-long/2addr p4, v0

    .line 117
    goto :goto_0
.end method

.method protected s(JJLcom/googlecode/mp4parser/authoring/tracks/g;ILcom/coremedia/iso/boxes/fragment/k;)V
    .locals 5

    .line 1
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p6

    .line 5
    const-string v0, "enc.[0]/sinf[0]/schm[0]"

    .line 6
    .line 7
    invoke-static {p6, v0}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/coremedia/iso/boxes/x0;

    .line 12
    .line 13
    const-string v0, "enc.[0]/sinf[0]/schi[0]/tenc[0]"

    .line 14
    .line 15
    invoke-static {p6, v0}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 16
    .line 17
    .line 18
    move-result-object p6

    .line 19
    check-cast p6, Lcom/mp4parser/iso23001/part7/c;

    .line 20
    .line 21
    new-instance v0, Lcom/mp4parser/iso14496/part12/c;

    .line 22
    .line 23
    invoke-direct {v0}, Lcom/mp4parser/iso14496/part12/c;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v1, "cenc"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/mp4parser/iso14496/part12/c;->B(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 33
    .line 34
    .line 35
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/g;->V()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    sub-long v1, p3, p1

    .line 42
    .line 43
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    new-array v2, v1, [S

    .line 48
    .line 49
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/g;->b0()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p5

    .line 53
    const-wide/16 v3, 0x1

    .line 54
    .line 55
    sub-long/2addr p1, v3

    .line 56
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    sub-long/2addr p3, v3

    .line 61
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-interface {p5, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object p5

    .line 69
    const/4 p1, 0x0

    .line 70
    :goto_0
    if-lt p1, v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Lcom/mp4parser/iso14496/part12/c;->F([S)V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    check-cast p2, Lcom/mp4parser/iso23001/part7/a;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/mp4parser/iso23001/part7/a;->b()I

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    int-to-short p2, p2

    .line 87
    aput-short p2, v2, p1

    .line 88
    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-virtual {p6}, Lcom/googlecode/mp4parser/boxes/c;->w()I

    .line 93
    .line 94
    .line 95
    move-result p5

    .line 96
    invoke-virtual {v0, p5}, Lcom/mp4parser/iso14496/part12/c;->D(I)V

    .line 97
    .line 98
    .line 99
    sub-long/2addr p3, p1

    .line 100
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    invoke-virtual {v0, p1}, Lcom/mp4parser/iso14496/part12/c;->E(I)V

    .line 105
    .line 106
    .line 107
    :goto_1
    invoke-virtual {p7, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method protected t(JJLcom/googlecode/mp4parser/authoring/tracks/g;ILcom/coremedia/iso/boxes/fragment/k;)V
    .locals 2

    .line 1
    new-instance p6, Lcom/googlecode/mp4parser/boxes/dece/d;

    .line 2
    .line 3
    invoke-direct {p6}, Lcom/googlecode/mp4parser/boxes/dece/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/g;->V()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p6, v0}, Lcom/googlecode/mp4parser/boxes/b;->C(Z)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/tracks/g;->b0()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    const-wide/16 v0, 0x1

    .line 18
    .line 19
    sub-long/2addr p1, v0

    .line 20
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    sub-long/2addr p3, v0

    .line 25
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-interface {p5, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p6, p1}, Lcom/googlecode/mp4parser/boxes/b;->B(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p7, p6}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected u(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;
    .locals 0

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/u0;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/u0;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2, p1}, Lcom/googlecode/mp4parser/authoring/builder/d;->v(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lcom/coremedia/iso/boxes/d1;

    .line 10
    .line 11
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/d1;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 15
    .line 16
    .line 17
    new-instance p2, Lcom/coremedia/iso/boxes/v0;

    .line 18
    .line 19
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/v0;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/coremedia/iso/boxes/t0;

    .line 26
    .line 27
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/t0;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 31
    .line 32
    .line 33
    new-instance p2, Lcom/coremedia/iso/boxes/z0;

    .line 34
    .line 35
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/z0;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method protected v(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/u0;)V
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

.method protected w(JLcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/fragment/k;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/j;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p3}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    .line 16
    :goto_0
    int-to-long v4, v1

    .line 17
    cmp-long v6, v4, p1

    .line 18
    .line 19
    if-ltz v6, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/coremedia/iso/boxes/fragment/j;->w(J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p4, v0}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    add-int/lit8 v4, v1, -0x1

    .line 29
    .line 30
    aget-wide v4, p3, v4

    .line 31
    .line 32
    add-long/2addr v2, v4

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 34
    .line 35
    goto :goto_0
.end method

.method protected x(JJLcom/googlecode/mp4parser/authoring/h;ILcom/coremedia/iso/boxes/fragment/k;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/fragment/l;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/fragment/l;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/coremedia/iso/boxes/fragment/g;

    .line 7
    .line 8
    invoke-direct {p2}, Lcom/coremedia/iso/boxes/fragment/g;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/l;->L(Lcom/coremedia/iso/boxes/fragment/g;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 p2, -0x1

    .line 15
    .line 16
    invoke-virtual {p1, p2, p3}, Lcom/coremedia/iso/boxes/fragment/l;->I(J)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p5}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 24
    .line 25
    .line 26
    move-result-wide p2

    .line 27
    invoke-virtual {p1, p2, p3}, Lcom/coremedia/iso/boxes/fragment/l;->P(J)V

    .line 28
    .line 29
    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/fragment/l;->J(Z)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p7, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected y(Lcom/googlecode/mp4parser/authoring/h;Lcom/coremedia/iso/boxes/j;)Lcom/coremedia/iso/boxes/d;
    .locals 33

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/fragment/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/fragment/m;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/LinkedList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "moov/mvex/trex"

    .line 16
    .line 17
    move-object/from16 v3, p2

    .line 18
    .line 19
    invoke-static {v3, v2}, Lcom/googlecode/mp4parser/util/m;->h(Lcom/coremedia/iso/boxes/j;Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_d

    .line 33
    .line 34
    invoke-interface/range {p2 .. p2}, Lcom/coremedia/iso/boxes/j;->l()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v5

    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .line 44
    move-wide v6, v2

    .line 45
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/fragment/m;->C(Ljava/util/List;)V

    .line 52
    .line 53
    .line 54
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/coremedia/iso/boxes/fragment/m;->G(J)V

    .line 63
    .line 64
    .line 65
    return-object v0

    .line 66
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    move-object v15, v8

    .line 71
    check-cast v15, Lcom/coremedia/iso/boxes/d;

    .line 72
    .line 73
    instance-of v8, v15, Lcom/coremedia/iso/boxes/fragment/c;

    .line 74
    .line 75
    if-eqz v8, :cond_c

    .line 76
    .line 77
    move-object v8, v15

    .line 78
    check-cast v8, Lcom/coremedia/iso/boxes/fragment/c;

    .line 79
    .line 80
    const-class v9, Lcom/coremedia/iso/boxes/fragment/k;

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v13

    .line 86
    const/4 v14, 0x0

    .line 87
    const/4 v11, 0x0

    .line 88
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v8

    .line 92
    if-lt v11, v8, :cond_1

    .line 93
    .line 94
    goto/16 :goto_b

    .line 95
    .line 96
    :cond_1
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Lcom/coremedia/iso/boxes/fragment/k;

    .line 101
    .line 102
    invoke-virtual {v8}, Lcom/coremedia/iso/boxes/fragment/k;->v()Lcom/coremedia/iso/boxes/fragment/l;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/fragment/l;->A()J

    .line 107
    .line 108
    .line 109
    move-result-wide v9

    .line 110
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 111
    .line 112
    .line 113
    move-result-object v12

    .line 114
    invoke-virtual {v12}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 115
    .line 116
    .line 117
    move-result-wide v16

    .line 118
    cmp-long v12, v9, v16

    .line 119
    .line 120
    if-nez v12, :cond_b

    .line 121
    .line 122
    const-class v9, Lcom/coremedia/iso/boxes/fragment/n;

    .line 123
    .line 124
    invoke-virtual {v8, v9}, Lcom/googlecode/mp4parser/d;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v12

    .line 128
    const/4 v9, 0x0

    .line 129
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-lt v9, v8, :cond_2

    .line 134
    .line 135
    goto/16 :goto_a

    .line 136
    .line 137
    :cond_2
    new-instance v10, Ljava/util/LinkedList;

    .line 138
    .line 139
    invoke-direct {v10}, Ljava/util/LinkedList;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    move-object/from16 v17, v8

    .line 147
    .line 148
    check-cast v17, Lcom/coremedia/iso/boxes/fragment/n;

    .line 149
    .line 150
    move-wide/from16 v18, v6

    .line 151
    .line 152
    const/4 v7, 0x0

    .line 153
    :goto_4
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 158
    .line 159
    .line 160
    move-result v6

    .line 161
    if-lt v7, v6, :cond_4

    .line 162
    .line 163
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    if-ne v6, v7, :cond_3

    .line 176
    .line 177
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    if-lez v6, :cond_3

    .line 186
    .line 187
    invoke-interface {v10, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    check-cast v6, Lcom/coremedia/iso/boxes/fragment/m$a;

    .line 192
    .line 193
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_3
    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    .line 199
    .line 200
    :goto_5
    add-int/lit8 v9, v9, 0x1

    .line 201
    .line 202
    move-wide/from16 v6, v18

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_4
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->w()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    move-object/from16 v20, v6

    .line 214
    .line 215
    check-cast v20, Lcom/coremedia/iso/boxes/fragment/n$a;

    .line 216
    .line 217
    if-nez v7, :cond_5

    .line 218
    .line 219
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->B()Z

    .line 220
    .line 221
    .line 222
    move-result v6

    .line 223
    if-eqz v6, :cond_5

    .line 224
    .line 225
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->x()Lcom/coremedia/iso/boxes/fragment/g;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    goto :goto_6

    .line 230
    :cond_5
    invoke-virtual/range {v17 .. v17}, Lcom/coremedia/iso/boxes/fragment/n;->E()Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_6

    .line 235
    .line 236
    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/fragment/n$a;->k()Lcom/coremedia/iso/boxes/fragment/g;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    goto :goto_6

    .line 241
    :cond_6
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/i;->x()Lcom/coremedia/iso/boxes/fragment/g;

    .line 242
    .line 243
    .line 244
    move-result-object v6

    .line 245
    :goto_6
    if-nez v6, :cond_8

    .line 246
    .line 247
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v8

    .line 251
    const-string v14, "vide"

    .line 252
    .line 253
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 254
    .line 255
    .line 256
    move-result v8

    .line 257
    if-nez v8, :cond_7

    .line 258
    .line 259
    goto :goto_7

    .line 260
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    .line 261
    .line 262
    const-string v1, "Cannot find SampleFlags for video track but it\'s required to build tfra"

    .line 263
    .line 264
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v0

    .line 268
    :cond_8
    :goto_7
    if-eqz v6, :cond_a

    .line 269
    .line 270
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/g;->d()I

    .line 271
    .line 272
    .line 273
    move-result v6

    .line 274
    const/4 v8, 0x2

    .line 275
    if-ne v6, v8, :cond_9

    .line 276
    .line 277
    goto :goto_8

    .line 278
    :cond_9
    move-object/from16 v21, v0

    .line 279
    .line 280
    move-object/from16 v22, v1

    .line 281
    .line 282
    move-object/from16 v23, v4

    .line 283
    .line 284
    move-object/from16 v24, v5

    .line 285
    .line 286
    move/from16 v27, v7

    .line 287
    .line 288
    move/from16 v28, v9

    .line 289
    .line 290
    move-object v4, v10

    .line 291
    move/from16 v30, v11

    .line 292
    .line 293
    move-object/from16 v31, v12

    .line 294
    .line 295
    move-object v1, v13

    .line 296
    move-object/from16 v25, v15

    .line 297
    .line 298
    const/16 v32, 0x0

    .line 299
    .line 300
    goto :goto_9

    .line 301
    :cond_a
    :goto_8
    new-instance v14, Lcom/coremedia/iso/boxes/fragment/m$a;

    .line 302
    .line 303
    add-int/lit8 v6, v11, 0x1

    .line 304
    .line 305
    move-object/from16 v21, v0

    .line 306
    .line 307
    move-object/from16 v22, v1

    .line 308
    .line 309
    int-to-long v0, v6

    .line 310
    add-int/lit8 v6, v9, 0x1

    .line 311
    .line 312
    move-object/from16 v23, v4

    .line 313
    .line 314
    move-object/from16 v24, v5

    .line 315
    .line 316
    int-to-long v4, v6

    .line 317
    add-int/lit8 v6, v7, 0x1

    .line 318
    .line 319
    move-wide/from16 v25, v4

    .line 320
    .line 321
    int-to-long v4, v6

    .line 322
    move-object v6, v14

    .line 323
    move/from16 v27, v7

    .line 324
    .line 325
    move-wide/from16 v7, v18

    .line 326
    .line 327
    move/from16 v28, v9

    .line 328
    .line 329
    move-object/from16 v29, v10

    .line 330
    .line 331
    move-wide v9, v2

    .line 332
    move/from16 v30, v11

    .line 333
    .line 334
    move-object/from16 v31, v12

    .line 335
    .line 336
    move-wide v11, v0

    .line 337
    move-object v1, v13

    .line 338
    move-object v0, v14

    .line 339
    const/16 v32, 0x0

    .line 340
    .line 341
    move-wide/from16 v13, v25

    .line 342
    .line 343
    move-object/from16 v25, v15

    .line 344
    .line 345
    move-wide v15, v4

    .line 346
    invoke-direct/range {v6 .. v16}, Lcom/coremedia/iso/boxes/fragment/m$a;-><init>(JJJJJ)V

    .line 347
    .line 348
    .line 349
    move-object/from16 v4, v29

    .line 350
    .line 351
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    :goto_9
    invoke-virtual/range {v20 .. v20}, Lcom/coremedia/iso/boxes/fragment/n$a;->j()J

    .line 355
    .line 356
    .line 357
    move-result-wide v5

    .line 358
    add-long v18, v18, v5

    .line 359
    .line 360
    add-int/lit8 v7, v27, 0x1

    .line 361
    .line 362
    move-object v13, v1

    .line 363
    move-object v10, v4

    .line 364
    move-object/from16 v0, v21

    .line 365
    .line 366
    move-object/from16 v1, v22

    .line 367
    .line 368
    move-object/from16 v4, v23

    .line 369
    .line 370
    move-object/from16 v5, v24

    .line 371
    .line 372
    move-object/from16 v15, v25

    .line 373
    .line 374
    move/from16 v9, v28

    .line 375
    .line 376
    move/from16 v11, v30

    .line 377
    .line 378
    move-object/from16 v12, v31

    .line 379
    .line 380
    const/4 v14, 0x0

    .line 381
    goto/16 :goto_4

    .line 382
    .line 383
    :cond_b
    :goto_a
    move-object/from16 v21, v0

    .line 384
    .line 385
    move-object/from16 v22, v1

    .line 386
    .line 387
    move-object/from16 v23, v4

    .line 388
    .line 389
    move-object/from16 v24, v5

    .line 390
    .line 391
    move/from16 v30, v11

    .line 392
    .line 393
    move-object v1, v13

    .line 394
    move-object/from16 v25, v15

    .line 395
    .line 396
    const/16 v32, 0x0

    .line 397
    .line 398
    add-int/lit8 v11, v30, 0x1

    .line 399
    .line 400
    move-object v13, v1

    .line 401
    move-object/from16 v0, v21

    .line 402
    .line 403
    move-object/from16 v1, v22

    .line 404
    .line 405
    move-object/from16 v4, v23

    .line 406
    .line 407
    move-object/from16 v5, v24

    .line 408
    .line 409
    move-object/from16 v15, v25

    .line 410
    .line 411
    const/4 v14, 0x0

    .line 412
    goto/16 :goto_2

    .line 413
    .line 414
    :cond_c
    :goto_b
    move-object/from16 v21, v0

    .line 415
    .line 416
    move-object/from16 v22, v1

    .line 417
    .line 418
    move-object/from16 v23, v4

    .line 419
    .line 420
    move-object/from16 v24, v5

    .line 421
    .line 422
    move-object/from16 v25, v15

    .line 423
    .line 424
    invoke-interface/range {v25 .. v25}, Lcom/coremedia/iso/boxes/d;->getSize()J

    .line 425
    .line 426
    .line 427
    move-result-wide v0

    .line 428
    add-long/2addr v2, v0

    .line 429
    move-object/from16 v0, v21

    .line 430
    .line 431
    move-object/from16 v1, v22

    .line 432
    .line 433
    move-object/from16 v4, v23

    .line 434
    .line 435
    move-object/from16 v5, v24

    .line 436
    .line 437
    goto/16 :goto_1

    .line 438
    .line 439
    :cond_d
    move-object/from16 v21, v0

    .line 440
    .line 441
    move-object/from16 v22, v1

    .line 442
    .line 443
    move-object/from16 v23, v4

    .line 444
    .line 445
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    move-object v4, v0

    .line 450
    check-cast v4, Lcom/coremedia/iso/boxes/fragment/i;

    .line 451
    .line 452
    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/i;->A()J

    .line 453
    .line 454
    .line 455
    move-result-wide v0

    .line 456
    invoke-interface/range {p1 .. p1}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 457
    .line 458
    .line 459
    move-result-object v5

    .line 460
    invoke-virtual {v5}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 461
    .line 462
    .line 463
    move-result-wide v5

    .line 464
    cmp-long v7, v0, v5

    .line 465
    .line 466
    move-object/from16 v0, v21

    .line 467
    .line 468
    move-object/from16 v1, v22

    .line 469
    .line 470
    if-nez v7, :cond_e

    .line 471
    .line 472
    goto/16 :goto_0

    .line 473
    .line 474
    :cond_e
    move-object/from16 v4, v23

    .line 475
    .line 476
    goto/16 :goto_0
.end method

.method protected z(Lcom/googlecode/mp4parser/authoring/d;Lcom/googlecode/mp4parser/authoring/h;)Lcom/coremedia/iso/boxes/d;
    .locals 2

    .line 1
    new-instance p1, Lcom/coremedia/iso/boxes/g1;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/g1;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/c;->setVersion(I)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x7

    .line 11
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/c;->setFlags(I)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->b()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/g1;->J(I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->a()Ljava/util/Date;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/g1;->K(Ljava/util/Date;)V

    .line 34
    .line 35
    .line 36
    const-wide/16 v0, 0x0

    .line 37
    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/g1;->L(J)V

    .line 39
    .line 40
    .line 41
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->d()D

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/g1;->N(D)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->l()D

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/g1;->W(D)V

    .line 61
    .line 62
    .line 63
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->f()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/g1;->R(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/builder/d;->E()Ljava/util/Date;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/g1;->T(Ljava/util/Date;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/googlecode/mp4parser/authoring/i;->j()J

    .line 86
    .line 87
    .line 88
    move-result-wide v0

    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/coremedia/iso/boxes/g1;->U(J)V

    .line 90
    .line 91
    .line 92
    invoke-interface {p2}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/authoring/i;->k()F

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/g1;->V(F)V

    .line 101
    .line 102
    .line 103
    return-object p1
.end method
