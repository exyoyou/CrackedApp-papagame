.class public Lcom/alibaba/fastjson/serializer/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/j1;


# static fields
.field public static final a:Lcom/alibaba/fastjson/serializer/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/serializer/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/serializer/b0;->a:Lcom/alibaba/fastjson/serializer/b0;

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
.method public d(Lcom/alibaba/fastjson/serializer/v0;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->w()Lcom/alibaba/fastjson/serializer/v1;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/v1;->p0()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    move-object/from16 v3, p4

    .line 26
    .line 27
    if-eq v2, v3, :cond_2

    .line 28
    .line 29
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-class v3, Ljava/util/Date;

    .line 34
    .line 35
    if-ne v2, v3, :cond_1

    .line 36
    .line 37
    const-string v0, "new Date("

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/v1;->write(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v0, p2

    .line 43
    .line 44
    check-cast v0, Ljava/util/Date;

    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    const/16 v0, 0x29

    .line 51
    .line 52
    invoke-virtual {v1, v2, v3, v0}, Lcom/alibaba/fastjson/serializer/v1;->o0(JC)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/16 v2, 0x7b

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/serializer/v1;->v(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/v0;->L(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    move-object/from16 v0, p2

    .line 78
    .line 79
    check-cast v0, Ljava/util/Date;

    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v2

    .line 85
    const/16 v0, 0x2c

    .line 86
    .line 87
    const-string v4, "val"

    .line 88
    .line 89
    invoke-virtual {v1, v0, v4, v2, v3}, Lcom/alibaba/fastjson/serializer/v1;->Q(CLjava/lang/String;J)V

    .line 90
    .line 91
    .line 92
    const/16 v0, 0x7d

    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/v1;->m(C)V

    .line 95
    .line 96
    .line 97
    :goto_0
    return-void

    .line 98
    :cond_2
    move-object/from16 v2, p2

    .line 99
    .line 100
    check-cast v2, Ljava/util/Date;

    .line 101
    .line 102
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 103
    .line 104
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/serializer/v1;->g(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_4

    .line 109
    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/v0;->i()Ljava/text/DateFormat;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 117
    .line 118
    sget-object v3, Lcom/alibaba/fastjson/a;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 119
    .line 120
    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    invoke-virtual {v0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/v1;->q0(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    return-void

    .line 131
    :cond_4
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 132
    .line 133
    .line 134
    move-result-wide v2

    .line 135
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseISO8601DateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 136
    .line 137
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_9

    .line 142
    .line 143
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->UseSingleQuotes:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 144
    .line 145
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 146
    .line 147
    .line 148
    move-result v5

    .line 149
    const/16 v6, 0x27

    .line 150
    .line 151
    const/16 v7, 0x22

    .line 152
    .line 153
    if-eqz v5, :cond_5

    .line 154
    .line 155
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_5
    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 160
    .line 161
    .line 162
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 167
    .line 168
    .line 169
    const/4 v2, 0x1

    .line 170
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    .line 171
    .line 172
    .line 173
    move-result v3

    .line 174
    const/4 v8, 0x2

    .line 175
    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    .line 176
    .line 177
    .line 178
    move-result v8

    .line 179
    add-int/2addr v8, v2

    .line 180
    const/4 v2, 0x5

    .line 181
    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    const/16 v9, 0xb

    .line 186
    .line 187
    invoke-virtual {v5, v9}, Ljava/util/Calendar;->get(I)I

    .line 188
    .line 189
    .line 190
    move-result v9

    .line 191
    const/16 v10, 0xc

    .line 192
    .line 193
    invoke-virtual {v5, v10}, Ljava/util/Calendar;->get(I)I

    .line 194
    .line 195
    .line 196
    move-result v10

    .line 197
    const/16 v11, 0xd

    .line 198
    .line 199
    invoke-virtual {v5, v11}, Ljava/util/Calendar;->get(I)I

    .line 200
    .line 201
    .line 202
    move-result v12

    .line 203
    const/16 v13, 0xe

    .line 204
    .line 205
    invoke-virtual {v5, v13}, Ljava/util/Calendar;->get(I)I

    .line 206
    .line 207
    .line 208
    move-result v5

    .line 209
    const/16 v13, 0x10

    .line 210
    .line 211
    const/16 v14, 0x13

    .line 212
    .line 213
    const/16 v6, 0xa

    .line 214
    .line 215
    if-eqz v5, :cond_6

    .line 216
    .line 217
    const-string v16, "0000-00-00T00:00:00.000"

    .line 218
    .line 219
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toCharArray()[C

    .line 220
    .line 221
    .line 222
    move-result-object v15

    .line 223
    const/16 v7, 0x17

    .line 224
    .line 225
    invoke-static {v5, v7, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 226
    .line 227
    .line 228
    invoke-static {v12, v14, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 229
    .line 230
    .line 231
    invoke-static {v10, v13, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 232
    .line 233
    .line 234
    invoke-static {v9, v11, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 235
    .line 236
    .line 237
    invoke-static {v2, v6, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 238
    .line 239
    .line 240
    const/4 v5, 0x7

    .line 241
    invoke-static {v8, v5, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 242
    .line 243
    .line 244
    const/4 v7, 0x4

    .line 245
    invoke-static {v3, v7, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 246
    .line 247
    .line 248
    goto :goto_2

    .line 249
    :cond_6
    const/4 v5, 0x7

    .line 250
    const/4 v7, 0x4

    .line 251
    if-nez v12, :cond_7

    .line 252
    .line 253
    if-nez v10, :cond_7

    .line 254
    .line 255
    if-nez v9, :cond_7

    .line 256
    .line 257
    const-string v9, "0000-00-00"

    .line 258
    .line 259
    invoke-virtual {v9}, Ljava/lang/String;->toCharArray()[C

    .line 260
    .line 261
    .line 262
    move-result-object v15

    .line 263
    invoke-static {v2, v6, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 264
    .line 265
    .line 266
    invoke-static {v8, v5, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 267
    .line 268
    .line 269
    invoke-static {v3, v7, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 270
    .line 271
    .line 272
    goto :goto_2

    .line 273
    :cond_7
    const-string v5, "0000-00-00T00:00:00"

    .line 274
    .line 275
    invoke-virtual {v5}, Ljava/lang/String;->toCharArray()[C

    .line 276
    .line 277
    .line 278
    move-result-object v15

    .line 279
    invoke-static {v12, v14, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 280
    .line 281
    .line 282
    invoke-static {v10, v13, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 283
    .line 284
    .line 285
    invoke-static {v9, v11, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 286
    .line 287
    .line 288
    invoke-static {v2, v6, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 289
    .line 290
    .line 291
    const/4 v2, 0x7

    .line 292
    invoke-static {v8, v2, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 293
    .line 294
    .line 295
    const/4 v2, 0x4

    .line 296
    invoke-static {v3, v2, v15}, Lcom/alibaba/fastjson/util/f;->e(II[C)V

    .line 297
    .line 298
    .line 299
    :goto_2
    invoke-virtual {v1, v15}, Ljava/io/Writer;->write([C)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/v0;->y(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_8

    .line 307
    .line 308
    const/16 v0, 0x27

    .line 309
    .line 310
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 311
    .line 312
    .line 313
    goto :goto_3

    .line 314
    :cond_8
    const/16 v0, 0x22

    .line 315
    .line 316
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/serializer/v1;->a(C)Lcom/alibaba/fastjson/serializer/v1;

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_9
    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/v1;->n0(J)V

    .line 321
    .line 322
    .line 323
    :goto_3
    return-void
.end method
