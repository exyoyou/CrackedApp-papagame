.class public final Lcom/alibaba/fastjson/serializer/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/a1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/a1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/a1;->a:Lcom/alibaba/fastjson/serializer/a1;

    .line 7
    .line 8
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


# virtual methods
.method public final d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v0, p2

    .line 4
    .line 5
    move-object/from16 v1, p4

    .line 6
    .line 7
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 8
    .line 9
    invoke-virtual {v7, v2}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v8, :cond_0

    .line 19
    .line 20
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    .line 21
    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    aget-object v1, v1, v2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    move-object v10, v1

    .line 35
    const-string v1, "[]"

    .line 36
    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 40
    .line 41
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-virtual {v9}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void

    .line 55
    :cond_2
    move-object v3, v0

    .line 56
    check-cast v3, Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-nez v4, :cond_3

    .line 63
    .line 64
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->getContext()Lcom/alibaba/fastjson/serializer/r1;

    .line 69
    .line 70
    .line 71
    move-result-object v11

    .line 72
    move-object/from16 v12, p3

    .line 73
    .line 74
    invoke-virtual {v7, v11, v0, v12, v2}, Lcom/alibaba/fastjson/serializer/v0;->D(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 75
    .line 76
    .line 77
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 78
    .line 79
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/16 v13, 0x2c

    .line 84
    .line 85
    const/16 v14, 0x5d

    .line 86
    .line 87
    const/16 v4, 0x5b

    .line 88
    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 92
    .line 93
    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->x()V

    .line 95
    .line 96
    .line 97
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    const/4 v15, 0x0

    .line 102
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_7

    .line 107
    .line 108
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    if-eqz v15, :cond_4

    .line 113
    .line 114
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 115
    .line 116
    .line 117
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 118
    .line 119
    .line 120
    if-eqz v6, :cond_6

    .line 121
    .line 122
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/v0;->c(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    invoke-virtual {v7, v6}, Lcom/alibaba/fastjson/serializer/v0;->O(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 137
    .line 138
    .line 139
    move-result-object v16

    .line 140
    new-instance v5, Lcom/alibaba/fastjson/serializer/r1;

    .line 141
    .line 142
    const/16 v17, 0x0

    .line 143
    .line 144
    const/16 v18, 0x0

    .line 145
    .line 146
    move-object v1, v5

    .line 147
    move-object v2, v11

    .line 148
    move-object/from16 v3, p2

    .line 149
    .line 150
    move-object/from16 v4, p3

    .line 151
    .line 152
    move-object v13, v5

    .line 153
    move/from16 v5, v17

    .line 154
    .line 155
    move-object/from16 v17, v6

    .line 156
    .line 157
    move/from16 v6, v18

    .line 158
    .line 159
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/r1;-><init>(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7, v13}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    const/4 v6, 0x0

    .line 170
    move-object/from16 v1, v16

    .line 171
    .line 172
    move-object/from16 v2, p1

    .line 173
    .line 174
    move-object/from16 v3, v17

    .line 175
    .line 176
    move-object v5, v10

    .line 177
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 178
    .line 179
    .line 180
    goto :goto_3

    .line 181
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 186
    .line 187
    .line 188
    :goto_3
    add-int/lit8 v15, v15, 0x1

    .line 189
    .line 190
    const/16 v13, 0x2c

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->d()V

    .line 194
    .line 195
    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->B()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v9, v14}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :cond_8
    :try_start_1
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 207
    .line 208
    .line 209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 210
    .line 211
    .line 212
    move-result-object v13

    .line 213
    const/4 v15, 0x0

    .line 214
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-eqz v1, :cond_f

    .line 219
    .line 220
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    if-eqz v15, :cond_9

    .line 225
    .line 226
    const/16 v5, 0x2c

    .line 227
    .line 228
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 229
    .line 230
    .line 231
    goto :goto_5

    .line 232
    :cond_9
    const/16 v5, 0x2c

    .line 233
    .line 234
    :goto_5
    if-nez v6, :cond_a

    .line 235
    .line 236
    const-string v1, "null"

    .line 237
    .line 238
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/v1;->b(Ljava/lang/CharSequence;)Lcom/alibaba/fastjson/serializer/v1;

    .line 239
    .line 240
    .line 241
    :goto_6
    const/16 v18, 0x2c

    .line 242
    .line 243
    goto/16 :goto_7

    .line 244
    .line 245
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    const-class v2, Ljava/lang/Integer;

    .line 250
    .line 251
    if-ne v1, v2, :cond_b

    .line 252
    .line 253
    check-cast v6, Ljava/lang/Integer;

    .line 254
    .line 255
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/serializer/v1;->j0(I)V

    .line 260
    .line 261
    .line 262
    goto :goto_6

    .line 263
    :cond_b
    const-class v2, Ljava/lang/Long;

    .line 264
    .line 265
    if-ne v1, v2, :cond_d

    .line 266
    .line 267
    check-cast v6, Ljava/lang/Long;

    .line 268
    .line 269
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 270
    .line 271
    .line 272
    move-result-wide v1

    .line 273
    if-eqz v8, :cond_c

    .line 274
    .line 275
    const/16 v3, 0x4c

    .line 276
    .line 277
    invoke-virtual {v9, v1, v2, v3}, Lcom/alibaba/fastjson/serializer/v1;->o0(JC)V

    .line 278
    .line 279
    .line 280
    goto :goto_6

    .line 281
    :cond_c
    invoke-virtual {v9, v1, v2}, Lcom/alibaba/fastjson/serializer/v1;->n0(J)V

    .line 282
    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_d
    new-instance v4, Lcom/alibaba/fastjson/serializer/r1;

    .line 286
    .line 287
    const/16 v16, 0x0

    .line 288
    .line 289
    const/16 v17, 0x0

    .line 290
    .line 291
    move-object v1, v4

    .line 292
    move-object v2, v11

    .line 293
    move-object/from16 v3, p2

    .line 294
    .line 295
    move-object v14, v4

    .line 296
    move-object/from16 v4, p3

    .line 297
    .line 298
    const/16 v18, 0x2c

    .line 299
    .line 300
    move/from16 v5, v16

    .line 301
    .line 302
    move-object v0, v6

    .line 303
    move/from16 v6, v17

    .line 304
    .line 305
    invoke-direct/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/r1;-><init>(Lcom/alibaba/fastjson/serializer/r1;Ljava/lang/Object;Ljava/lang/Object;II)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v7, v14}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/v0;->c(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v1

    .line 315
    if-eqz v1, :cond_e

    .line 316
    .line 317
    invoke-virtual {v7, v0}, Lcom/alibaba/fastjson/serializer/v0;->O(Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    goto :goto_7

    .line 321
    :cond_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v7, v1}, Lcom/alibaba/fastjson/serializer/v0;->o(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/j1;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    const/4 v6, 0x0

    .line 334
    move-object/from16 v2, p1

    .line 335
    .line 336
    move-object v3, v0

    .line 337
    move-object v5, v10

    .line 338
    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/j1;->d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    .line 339
    .line 340
    .line 341
    :goto_7
    add-int/lit8 v15, v15, 0x1

    .line 342
    .line 343
    move-object/from16 v0, p2

    .line 344
    .line 345
    const/16 v14, 0x5d

    .line 346
    .line 347
    goto/16 :goto_4

    .line 348
    .line 349
    :cond_f
    const/16 v0, 0x5d

    .line 350
    .line 351
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    .line 353
    .line 354
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 355
    .line 356
    .line 357
    return-void

    .line 358
    :catchall_0
    move-exception v0

    .line 359
    invoke-virtual {v7, v11}, Lcom/alibaba/fastjson/serializer/v0;->C(Lcom/alibaba/fastjson/serializer/r1;)V

    .line 360
    .line 361
    .line 362
    throw v0
.end method
