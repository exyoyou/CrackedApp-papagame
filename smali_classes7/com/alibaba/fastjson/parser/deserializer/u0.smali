.class public Lcom/alibaba/fastjson/parser/deserializer/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/parser/deserializer/x0;


# static fields
.field public static final a:Lcom/alibaba/fastjson/parser/deserializer/u0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/u0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/alibaba/fastjson/parser/deserializer/u0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/alibaba/fastjson/parser/deserializer/u0;->a:Lcom/alibaba/fastjson/parser/deserializer/u0;

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

.method public static f(Lcom/alibaba/fastjson/parser/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0xc

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 23
    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string p2, "syntax error, expect {, actual "

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->h()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->j()Lcom/alibaba/fastjson/parser/k;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->j()Lcom/alibaba/fastjson/parser/k;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    invoke-interface {p4, v3}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    :cond_2
    :goto_1
    :try_start_0
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    const/16 v5, 0xd

    .line 81
    .line 82
    if-ne v4, v5, :cond_3

    .line 83
    .line 84
    invoke-interface {p4, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 88
    .line 89
    .line 90
    return-object p1

    .line 91
    :cond_3
    :try_start_1
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const/4 v6, 0x0

    .line 96
    const/4 v7, 0x4

    .line 97
    if-ne v4, v7, :cond_9

    .line 98
    .line 99
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->O()Z

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_9

    .line 104
    .line 105
    invoke-interface {p4, v7}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-ne p1, v7, :cond_8

    .line 113
    .line 114
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p2, ".."

    .line 119
    .line 120
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    if-eqz p2, :cond_4

    .line 125
    .line 126
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    goto :goto_3

    .line 135
    :cond_4
    const-string p2, "$"

    .line 136
    .line 137
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p2

    .line 141
    if-eqz p2, :cond_6

    .line 142
    .line 143
    move-object p1, v3

    .line 144
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    if-eqz p2, :cond_5

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/j;->b()Lcom/alibaba/fastjson/parser/j;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    goto :goto_2

    .line 155
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/j;->a()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    goto :goto_3

    .line 160
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson/parser/c$a;

    .line 161
    .line 162
    invoke-direct {p2, v3, p1}, Lcom/alibaba/fastjson/parser/c$a;-><init>(Lcom/alibaba/fastjson/parser/j;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/c;->e(Lcom/alibaba/fastjson/parser/c$a;)V

    .line 166
    .line 167
    .line 168
    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 170
    .line 171
    .line 172
    :goto_3
    invoke-interface {p4, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 173
    .line 174
    .line 175
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-ne p1, v5, :cond_7

    .line 180
    .line 181
    invoke-interface {p4, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 185
    .line 186
    .line 187
    return-object v6

    .line 188
    :cond_7
    :try_start_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 189
    .line 190
    const-string p2, "illegal ref"

    .line 191
    .line 192
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p1

    .line 196
    :cond_8
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 197
    .line 198
    new-instance p2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 201
    .line 202
    .line 203
    const-string p3, "illegal ref, "

    .line 204
    .line 205
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 209
    .line 210
    .line 211
    move-result p3

    .line 212
    invoke-static {p3}, Lcom/alibaba/fastjson/parser/h;->a(I)Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p3

    .line 216
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p1

    .line 227
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-nez v4, :cond_b

    .line 232
    .line 233
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-ne v4, v7, :cond_b

    .line 238
    .line 239
    sget-object v4, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 240
    .line 241
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->R()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v8

    .line 245
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_b

    .line 250
    .line 251
    invoke-interface {p4, v7}, Lcom/alibaba/fastjson/parser/d;->L(I)V

    .line 252
    .line 253
    .line 254
    invoke-interface {p4, v2}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 255
    .line 256
    .line 257
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 258
    .line 259
    .line 260
    move-result v4

    .line 261
    if-ne v4, v5, :cond_a

    .line 262
    .line 263
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 264
    .line 265
    .line 266
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 267
    .line 268
    .line 269
    return-object p1

    .line 270
    :cond_a
    :try_start_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    invoke-interface {p4, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 275
    .line 276
    .line 277
    :cond_b
    invoke-interface {v0, p0, p2, v6}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 282
    .line 283
    .line 284
    move-result v5

    .line 285
    const/16 v6, 0x11

    .line 286
    .line 287
    if-ne v5, v6, :cond_c

    .line 288
    .line 289
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 290
    .line 291
    .line 292
    move-result v5

    .line 293
    invoke-interface {p4, v5}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 294
    .line 295
    .line 296
    invoke-interface {v1, p0, p3, v4}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 304
    .line 305
    .line 306
    move-result v4

    .line 307
    if-ne v4, v2, :cond_2

    .line 308
    .line 309
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/deserializer/x0;->b()I

    .line 310
    .line 311
    .line 312
    move-result v4

    .line 313
    invoke-interface {p4, v4}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_1

    .line 317
    .line 318
    :cond_c
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 319
    .line 320
    new-instance p2, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string p3, "syntax error, expect :, actual "

    .line 326
    .line 327
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-interface {p4}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 331
    .line 332
    .line 333
    move-result p3

    .line 334
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 345
    :catchall_0
    move-exception p1

    .line 346
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 347
    .line 348
    .line 349
    throw p1
.end method

.method public static g(Lcom/alibaba/fastjson/parser/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xc

    .line 10
    .line 11
    if-ne v1, v2, :cond_10

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_0
    :try_start_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    sget-object v3, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    :goto_0
    const/16 v3, 0x2c

    .line 33
    .line 34
    if-ne v2, v3, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 43
    .line 44
    .line 45
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const-string v3, "expect \':\' at "

    .line 48
    .line 49
    const/16 v4, 0x3a

    .line 50
    .line 51
    const/16 v5, 0x22

    .line 52
    .line 53
    const/16 v6, 0x10

    .line 54
    .line 55
    if-ne v2, v5, :cond_3

    .line 56
    .line 57
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v0, v2, v5}, Lcom/alibaba/fastjson/parser/d;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 66
    .line 67
    .line 68
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    if-ne v7, v4, :cond_2

    .line 73
    .line 74
    goto/16 :goto_1

    .line 75
    .line 76
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 77
    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 87
    .line 88
    .line 89
    move-result p3

    .line 90
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw p1

    .line 101
    :cond_3
    const/16 v7, 0x7d

    .line 102
    .line 103
    if-ne v2, v7, :cond_4

    .line 104
    .line 105
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 106
    .line 107
    .line 108
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->d0()V

    .line 109
    .line 110
    .line 111
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 115
    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_4
    const-string v7, "syntax error"

    .line 119
    .line 120
    const/16 v8, 0x27

    .line 121
    .line 122
    if-ne v2, v8, :cond_7

    .line 123
    .line 124
    :try_start_2
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    .line 125
    .line 126
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_6

    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {v0, v2, v8}, Lcom/alibaba/fastjson/parser/d;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 141
    .line 142
    .line 143
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    if-ne v7, v4, :cond_5

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 151
    .line 152
    new-instance p2, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p1

    .line 175
    :cond_6
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 176
    .line 177
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p1

    .line 181
    :cond_7
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    .line 182
    .line 183
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/c;->P(Lcom/alibaba/fastjson/parser/Feature;)Z

    .line 184
    .line 185
    .line 186
    move-result v2

    .line 187
    if-eqz v2, :cond_f

    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/d;->K(Lcom/alibaba/fastjson/parser/l;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 198
    .line 199
    .line 200
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    if-ne v7, v4, :cond_e

    .line 205
    .line 206
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->next()C

    .line 207
    .line 208
    .line 209
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->s()V

    .line 210
    .line 211
    .line 212
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->getCurrent()C

    .line 213
    .line 214
    .line 215
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->d0()V

    .line 216
    .line 217
    .line 218
    sget-object v3, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 219
    .line 220
    const/16 v4, 0xd

    .line 221
    .line 222
    if-ne v2, v3, :cond_a

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->M()Lcom/alibaba/fastjson/parser/l;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {v0, v2, v5}, Lcom/alibaba/fastjson/parser/d;->d(Lcom/alibaba/fastjson/parser/l;C)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-static {v2}, Lcom/alibaba/fastjson/util/k;->K(Ljava/lang/String;)Ljava/lang/Class;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    if-ne v2, v3, :cond_8

    .line 241
    .line 242
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 243
    .line 244
    .line 245
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-ne v2, v4, :cond_0

    .line 250
    .line 251
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 255
    .line 256
    .line 257
    return-object p1

    .line 258
    :cond_8
    :try_start_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->j()Lcom/alibaba/fastjson/parser/k;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/k;->g(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/x0;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 267
    .line 268
    .line 269
    const/4 p2, 0x2

    .line 270
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/c;->y0(I)V

    .line 271
    .line 272
    .line 273
    if-eqz v1, :cond_9

    .line 274
    .line 275
    instance-of p2, p3, Ljava/lang/Integer;

    .line 276
    .line 277
    if-nez p2, :cond_9

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/c;->r0()V

    .line 280
    .line 281
    .line 282
    :cond_9
    invoke-interface {p1, p0, v2, p3}, Lcom/alibaba/fastjson/parser/deserializer/x0;->c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    check-cast p1, Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 287
    .line 288
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 289
    .line 290
    .line 291
    return-object p1

    .line 292
    :cond_a
    :try_start_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 293
    .line 294
    .line 295
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 296
    .line 297
    .line 298
    move-result v3

    .line 299
    const/16 v5, 0x8

    .line 300
    .line 301
    if-ne v3, v5, :cond_b

    .line 302
    .line 303
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V

    .line 304
    .line 305
    .line 306
    const/4 v3, 0x0

    .line 307
    goto :goto_2

    .line 308
    :cond_b
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/c;->n0(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v3

    .line 312
    :goto_2
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, p1, v2}, Lcom/alibaba/fastjson/parser/c;->g(Ljava/util/Map;Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {p0, v1, v3, v2}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 319
    .line 320
    .line 321
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    const/16 v3, 0x14

    .line 326
    .line 327
    if-eq v2, v3, :cond_d

    .line 328
    .line 329
    const/16 v3, 0xf

    .line 330
    .line 331
    if-ne v2, v3, :cond_c

    .line 332
    .line 333
    goto :goto_3

    .line 334
    :cond_c
    if-ne v2, v4, :cond_0

    .line 335
    .line 336
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->j()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 337
    .line 338
    .line 339
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 340
    .line 341
    .line 342
    return-object p1

    .line 343
    :cond_d
    :goto_3
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 344
    .line 345
    .line 346
    return-object p1

    .line 347
    :cond_e
    :try_start_5
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 348
    .line 349
    new-instance p2, Ljava/lang/StringBuilder;

    .line 350
    .line 351
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->v()I

    .line 358
    .line 359
    .line 360
    move-result p3

    .line 361
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    const-string p3, ", actual "

    .line 365
    .line 366
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    .line 368
    .line 369
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object p2

    .line 376
    invoke-direct {p1, p2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    throw p1

    .line 380
    :cond_f
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 381
    .line 382
    invoke-direct {p1, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 386
    :catchall_0
    move-exception p1

    .line 387
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 388
    .line 389
    .line 390
    throw p1

    .line 391
    :cond_10
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    .line 392
    .line 393
    new-instance p1, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    const-string p2, "syntax error, expect {, actual "

    .line 399
    .line 400
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 404
    .line 405
    .line 406
    move-result p2

    .line 407
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-direct {p0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    throw p0
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    const/16 v0, 0xc

    return v0
.end method

.method public c(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->z()Lcom/alibaba/fastjson/parser/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/d;->b()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    if-ne v1, v2, :cond_0

    .line 12
    .line 13
    const/16 p1, 0x10

    .line 14
    .line 15
    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/d;->l(I)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    return-object p1

    .line 20
    :cond_0
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/deserializer/u0;->d(Ljava/lang/reflect/Type;)Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/c;->getContext()Lcom/alibaba/fastjson/parser/j;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :try_start_0
    invoke-virtual {p1, v1, v0, p3}, Lcom/alibaba/fastjson/parser/c;->t0(Lcom/alibaba/fastjson/parser/j;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/j;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/deserializer/u0;->e(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 36
    .line 37
    .line 38
    return-object p2

    .line 39
    :catchall_0
    move-exception p2

    .line 40
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/c;->v0(Lcom/alibaba/fastjson/parser/j;)V

    .line 41
    .line 42
    .line 43
    throw p2
.end method

.method protected d(Ljava/lang/reflect/Type;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/util/Properties;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/util/Properties;

    .line 6
    .line 7
    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    .line 8
    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    const-class v0, Ljava/util/Hashtable;

    .line 12
    .line 13
    if-ne p1, v0, :cond_1

    .line 14
    .line 15
    new-instance p1, Ljava/util/Hashtable;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :cond_1
    const-class v0, Ljava/util/IdentityHashMap;

    .line 22
    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    new-instance p1, Ljava/util/IdentityHashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_2
    const-class v0, Ljava/util/SortedMap;

    .line 32
    .line 33
    if-eq p1, v0, :cond_b

    .line 34
    .line 35
    const-class v0, Ljava/util/TreeMap;

    .line 36
    .line 37
    if-ne p1, v0, :cond_3

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_3
    const-class v0, Ljava/util/concurrent/ConcurrentMap;

    .line 42
    .line 43
    if-eq p1, v0, :cond_a

    .line 44
    .line 45
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    if-ne p1, v0, :cond_4

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_4
    const-class v0, Ljava/util/Map;

    .line 51
    .line 52
    if-eq p1, v0, :cond_9

    .line 53
    .line 54
    const-class v0, Ljava/util/HashMap;

    .line 55
    .line 56
    if-ne p1, v0, :cond_5

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_5
    const-class v0, Ljava/util/LinkedHashMap;

    .line 60
    .line 61
    if-ne p1, v0, :cond_6

    .line 62
    .line 63
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 64
    .line 65
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_6
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    .line 70
    .line 71
    if-eqz v0, :cond_7

    .line 72
    .line 73
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 74
    .line 75
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/deserializer/u0;->d(Ljava/lang/reflect/Type;)Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1

    .line 84
    :cond_7
    move-object v0, p1

    .line 85
    check-cast v0, Ljava/lang/Class;

    .line 86
    .line 87
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    const-string v2, "unsupport type "

    .line 92
    .line 93
    if-nez v1, :cond_8

    .line 94
    .line 95
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    .line 104
    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    invoke-direct {v1, p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    throw v1

    .line 124
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    .line 125
    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-direct {v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw v0

    .line 145
    :cond_9
    :goto_0
    new-instance p1, Ljava/util/HashMap;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .line 149
    .line 150
    return-object p1

    .line 151
    :cond_a
    :goto_1
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 152
    .line 153
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 154
    .line 155
    .line 156
    return-object p1

    .line 157
    :cond_b
    :goto_2
    new-instance p1, Ljava/util/TreeMap;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    .line 160
    .line 161
    .line 162
    return-object p1
.end method

.method protected e(Lcom/alibaba/fastjson/parser/c;Ljava/lang/reflect/Type;Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    aget-object v0, v0, v1

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const/4 v1, 0x1

    .line 19
    aget-object p2, p2, v1

    .line 20
    .line 21
    const-class v1, Ljava/lang/String;

    .line 22
    .line 23
    if-ne v1, v0, :cond_0

    .line 24
    .line 25
    invoke-static {p1, p4, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/u0;->g(Lcom/alibaba/fastjson/parser/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-static {p1, p4, v0, p2, p3}, Lcom/alibaba/fastjson/parser/deserializer/u0;->f(Lcom/alibaba/fastjson/parser/c;Ljava/util/Map;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_1
    invoke-virtual {p1, p4, p3}, Lcom/alibaba/fastjson/parser/c;->p0(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method
