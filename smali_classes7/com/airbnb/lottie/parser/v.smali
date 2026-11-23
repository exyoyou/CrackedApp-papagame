.class public Lcom/airbnb/lottie/parser/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

.field private static final b:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

.field private static final c:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v0, "nm"

    .line 2
    .line 3
    const-string v1, "ind"

    .line 4
    .line 5
    const-string v2, "refId"

    .line 6
    .line 7
    const-string v3, "ty"

    .line 8
    .line 9
    const-string v4, "parent"

    .line 10
    .line 11
    const-string v5, "sw"

    .line 12
    .line 13
    const-string v6, "sh"

    .line 14
    .line 15
    const-string v7, "sc"

    .line 16
    .line 17
    const-string v8, "ks"

    .line 18
    .line 19
    const-string v9, "tt"

    .line 20
    .line 21
    const-string v10, "masksProperties"

    .line 22
    .line 23
    const-string v11, "shapes"

    .line 24
    .line 25
    const-string v12, "t"

    .line 26
    .line 27
    const-string v13, "ef"

    .line 28
    .line 29
    const-string v14, "sr"

    .line 30
    .line 31
    const-string v15, "st"

    .line 32
    .line 33
    const-string v16, "w"

    .line 34
    .line 35
    const-string v17, "h"

    .line 36
    .line 37
    const-string v18, "ip"

    .line 38
    .line 39
    const-string v19, "op"

    .line 40
    .line 41
    const-string v20, "tm"

    .line 42
    .line 43
    const-string v21, "cl"

    .line 44
    .line 45
    const-string v22, "hd"

    .line 46
    .line 47
    const-string v23, "ao"

    .line 48
    .line 49
    const-string v24, "bm"

    .line 50
    .line 51
    filled-new-array/range {v0 .. v24}, [Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sput-object v0, Lcom/airbnb/lottie/parser/v;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 60
    .line 61
    const-string v0, "d"

    .line 62
    .line 63
    const-string v1, "a"

    .line 64
    .line 65
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lcom/airbnb/lottie/parser/v;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 74
    .line 75
    const-string v0, "ty"

    .line 76
    .line 77
    const-string v1, "nm"

    .line 78
    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/airbnb/lottie/parser/moshi/JsonReader$a;->a([Ljava/lang/String;)Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sput-object v0, Lcom/airbnb/lottie/parser/v;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 88
    .line 89
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

.method public static a(Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 29

    .line 1
    move-object/from16 v2, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/j;->b()Landroid/graphics/Rect;

    .line 4
    .line 5
    .line 6
    move-result-object v18

    .line 7
    new-instance v28, Lcom/airbnb/lottie/model/layer/Layer;

    .line 8
    .line 9
    move-object/from16 v0, v28

    .line 10
    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v3, "__container"

    .line 16
    .line 17
    const-wide/16 v4, -0x1

    .line 18
    .line 19
    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PRE_COMP:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 20
    .line 21
    const-wide/16 v7, -0x1

    .line 22
    .line 23
    const/4 v9, 0x0

    .line 24
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v10

    .line 28
    new-instance v12, Lcom/airbnb/lottie/model/animatable/l;

    .line 29
    .line 30
    move-object v11, v12

    .line 31
    invoke-direct {v12}, Lcom/airbnb/lottie/model/animatable/l;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v12, 0x0

    .line 35
    const/4 v13, 0x0

    .line 36
    const/4 v14, 0x0

    .line 37
    const/4 v15, 0x0

    .line 38
    const/16 v16, 0x0

    .line 39
    .line 40
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    int-to-float v4, v4

    .line 45
    move/from16 v17, v4

    .line 46
    .line 47
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->height()I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    int-to-float v4, v4

    .line 52
    move/from16 v18, v4

    .line 53
    .line 54
    const/16 v19, 0x0

    .line 55
    .line 56
    const/16 v20, 0x0

    .line 57
    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object v21

    .line 62
    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 63
    .line 64
    const/16 v23, 0x0

    .line 65
    .line 66
    const/16 v24, 0x0

    .line 67
    .line 68
    const/16 v25, 0x0

    .line 69
    .line 70
    const/16 v26, 0x0

    .line 71
    .line 72
    sget-object v27, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 73
    .line 74
    const-wide/16 v4, -0x1

    .line 75
    .line 76
    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/j;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFFFLcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/b;ZLcom/airbnb/lottie/model/content/a;Lcom/airbnb/lottie/parser/j;Lcom/airbnb/lottie/model/content/LBlendMode;)V

    .line 77
    .line 78
    .line 79
    return-object v28
.end method

.method public static b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    sget-object v1, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->NONE:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 6
    .line 7
    sget-object v2, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 8
    .line 9
    new-instance v10, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v8, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()V

    .line 20
    .line 21
    .line 22
    const-string v3, "UNSET"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const-wide/16 v5, 0x0

    .line 26
    .line 27
    const/4 v9, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 30
    .line 31
    .line 32
    move-result-object v12

    .line 33
    const-wide/16 v13, -0x1

    .line 34
    .line 35
    const/high16 v15, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v16

    .line 41
    move-object/from16 v33, v1

    .line 42
    .line 43
    move-object/from16 v38, v2

    .line 44
    .line 45
    move-object v15, v4

    .line 46
    move-object/from16 v20, v15

    .line 47
    .line 48
    move-object/from16 v23, v20

    .line 49
    .line 50
    move-object/from16 v31, v23

    .line 51
    .line 52
    move-object/from16 v32, v31

    .line 53
    .line 54
    move-object/from16 v34, v32

    .line 55
    .line 56
    move-object/from16 v36, v34

    .line 57
    .line 58
    move-object/from16 v37, v36

    .line 59
    .line 60
    move-wide/from16 v17, v5

    .line 61
    .line 62
    move-wide/from16 v21, v13

    .line 63
    .line 64
    const/4 v6, 0x0

    .line 65
    const/16 v19, 0x0

    .line 66
    .line 67
    const/16 v24, 0x0

    .line 68
    .line 69
    const/16 v25, 0x0

    .line 70
    .line 71
    const/16 v26, 0x0

    .line 72
    .line 73
    const/high16 v27, 0x3f800000    # 1.0f

    .line 74
    .line 75
    const/16 v28, 0x0

    .line 76
    .line 77
    const/16 v29, 0x0

    .line 78
    .line 79
    const/16 v30, 0x0

    .line 80
    .line 81
    const/16 v35, 0x0

    .line 82
    .line 83
    const/16 v39, 0x0

    .line 84
    .line 85
    move-object v13, v3

    .line 86
    move-object/from16 v14, v37

    .line 87
    .line 88
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_14

    .line 93
    .line 94
    sget-object v1, Lcom/airbnb/lottie/parser/v;->a:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x1

    .line 101
    packed-switch v1, :pswitch_data_0

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->v()V

    .line 105
    .line 106
    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->y()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    array-length v2, v2

    .line 120
    if-lt v1, v2, :cond_1

    .line 121
    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v3, "Unsupported Blend Mode: "

    .line 128
    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v38, Lcom/airbnb/lottie/model/content/LBlendMode;->NORMAL:Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_1
    invoke-static {}, Lcom/airbnb/lottie/model/content/LBlendMode;->values()[Lcom/airbnb/lottie/model/content/LBlendMode;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    aget-object v38, v2, v1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-ne v1, v2, :cond_2

    .line 157
    .line 158
    const/4 v6, 0x1

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    const/4 v6, 0x0

    .line 161
    goto :goto_0

    .line 162
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->h()Z

    .line 163
    .line 164
    .line 165
    move-result v35

    .line 166
    goto :goto_0

    .line 167
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v14

    .line 171
    goto :goto_0

    .line 172
    :pswitch_4
    invoke-static {v0, v7, v9}, Lcom/airbnb/lottie/parser/d;->f(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;Z)Lcom/airbnb/lottie/model/animatable/b;

    .line 173
    .line 174
    .line 175
    move-result-object v34

    .line 176
    goto :goto_0

    .line 177
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()D

    .line 178
    .line 179
    .line 180
    move-result-wide v1

    .line 181
    double-to-float v1, v1

    .line 182
    move/from16 v39, v1

    .line 183
    .line 184
    goto :goto_0

    .line 185
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()D

    .line 186
    .line 187
    .line 188
    move-result-wide v1

    .line 189
    double-to-float v1, v1

    .line 190
    move/from16 v19, v1

    .line 191
    .line 192
    goto :goto_0

    .line 193
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()D

    .line 194
    .line 195
    .line 196
    move-result-wide v1

    .line 197
    invoke-static {}, Lcom/airbnb/lottie/utils/l;->e()F

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    float-to-double v3, v3

    .line 202
    mul-double v1, v1, v3

    .line 203
    .line 204
    double-to-float v1, v1

    .line 205
    move/from16 v30, v1

    .line 206
    .line 207
    goto :goto_0

    .line 208
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()D

    .line 209
    .line 210
    .line 211
    move-result-wide v1

    .line 212
    invoke-static {}, Lcom/airbnb/lottie/utils/l;->e()F

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    float-to-double v3, v3

    .line 217
    mul-double v1, v1, v3

    .line 218
    .line 219
    double-to-float v1, v1

    .line 220
    move/from16 v29, v1

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()D

    .line 225
    .line 226
    .line 227
    move-result-wide v1

    .line 228
    double-to-float v1, v1

    .line 229
    move/from16 v28, v1

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->j()D

    .line 234
    .line 235
    .line 236
    move-result-wide v1

    .line 237
    double-to-float v1, v1

    .line 238
    move/from16 v27, v1

    .line 239
    .line 240
    goto/16 :goto_0

    .line 241
    .line 242
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    .line 243
    .line 244
    .line 245
    new-instance v1, Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 248
    .line 249
    .line 250
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    if-eqz v3, :cond_8

    .line 255
    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()V

    .line 257
    .line 258
    .line 259
    :cond_3
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 260
    .line 261
    .line 262
    move-result v3

    .line 263
    if-eqz v3, :cond_7

    .line 264
    .line 265
    sget-object v3, Lcom/airbnb/lottie/parser/v;->c:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 266
    .line 267
    invoke-virtual {v0, v3}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    .line 268
    .line 269
    .line 270
    move-result v3

    .line 271
    if-eqz v3, :cond_5

    .line 272
    .line 273
    if-eq v3, v2, :cond_4

    .line 274
    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->v()V

    .line 276
    .line 277
    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->y()V

    .line 279
    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 291
    .line 292
    .line 293
    move-result v3

    .line 294
    const/16 v4, 0x1d

    .line 295
    .line 296
    if-ne v3, v4, :cond_6

    .line 297
    .line 298
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/e;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/content/a;

    .line 299
    .line 300
    .line 301
    move-result-object v36

    .line 302
    goto :goto_2

    .line 303
    :cond_6
    const/16 v4, 0x19

    .line 304
    .line 305
    if-ne v3, v4, :cond_3

    .line 306
    .line 307
    new-instance v3, Lcom/airbnb/lottie/parser/k;

    .line 308
    .line 309
    invoke-direct {v3}, Lcom/airbnb/lottie/parser/k;-><init>()V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v3, v0, v7}, Lcom/airbnb/lottie/parser/k;->b(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/parser/j;

    .line 313
    .line 314
    .line 315
    move-result-object v37

    .line 316
    goto :goto_2

    .line 317
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 318
    .line 319
    .line 320
    goto :goto_1

    .line 321
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    .line 322
    .line 323
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    .line 325
    .line 326
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    .line 328
    .line 329
    const-string v3, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape. Found: "

    .line 330
    .line 331
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto/16 :goto_0

    .line 345
    .line 346
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->d()V

    .line 347
    .line 348
    .line 349
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    if-eqz v1, :cond_d

    .line 354
    .line 355
    sget-object v1, Lcom/airbnb/lottie/parser/v;->b:Lcom/airbnb/lottie/parser/moshi/JsonReader$a;

    .line 356
    .line 357
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->t(Lcom/airbnb/lottie/parser/moshi/JsonReader$a;)I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-eqz v1, :cond_c

    .line 362
    .line 363
    if-eq v1, v2, :cond_9

    .line 364
    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->v()V

    .line 366
    .line 367
    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->y()V

    .line 369
    .line 370
    .line 371
    goto :goto_3

    .line 372
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    .line 373
    .line 374
    .line 375
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    if-eqz v1, :cond_a

    .line 380
    .line 381
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/b;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/animatable/k;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    move-object/from16 v32, v1

    .line 386
    .line 387
    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    if-eqz v1, :cond_b

    .line 392
    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->y()V

    .line 394
    .line 395
    .line 396
    goto :goto_4

    .line 397
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    .line 398
    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_c
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/d;->d(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/animatable/j;

    .line 402
    .line 403
    .line 404
    move-result-object v31

    .line 405
    goto :goto_3

    .line 406
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 407
    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    .line 412
    .line 413
    .line 414
    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 415
    .line 416
    .line 417
    move-result v1

    .line 418
    if-eqz v1, :cond_f

    .line 419
    .line 420
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/h;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/content/c;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    if-eqz v1, :cond_e

    .line 425
    .line 426
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    .line 428
    .line 429
    goto :goto_5

    .line 430
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    .line 431
    .line 432
    .line 433
    goto/16 :goto_0

    .line 434
    .line 435
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->b()V

    .line 436
    .line 437
    .line 438
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->g()Z

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    if-eqz v1, :cond_10

    .line 443
    .line 444
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/x;->a(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/content/Mask;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    goto :goto_6

    .line 452
    :cond_10
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 453
    .line 454
    .line 455
    move-result v1

    .line 456
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/j;->v(I)V

    .line 457
    .line 458
    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->e()V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_0

    .line 463
    .line 464
    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 465
    .line 466
    .line 467
    move-result v1

    .line 468
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    array-length v3, v3

    .line 473
    if-lt v1, v3, :cond_11

    .line 474
    .line 475
    new-instance v2, Ljava/lang/StringBuilder;

    .line 476
    .line 477
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 478
    .line 479
    .line 480
    const-string v3, "Unsupported matte type: "

    .line 481
    .line 482
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v1

    .line 492
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    goto/16 :goto_0

    .line 496
    .line 497
    :cond_11
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 498
    .line 499
    .line 500
    move-result-object v3

    .line 501
    aget-object v33, v3, v1

    .line 502
    .line 503
    sget-object v1, Lcom/airbnb/lottie/parser/v$a;->a:[I

    .line 504
    .line 505
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    .line 506
    .line 507
    .line 508
    move-result v3

    .line 509
    aget v1, v1, v3

    .line 510
    .line 511
    if-eq v1, v2, :cond_13

    .line 512
    .line 513
    const/4 v3, 0x2

    .line 514
    if-eq v1, v3, :cond_12

    .line 515
    .line 516
    goto :goto_7

    .line 517
    :cond_12
    const-string v1, "Unsupported matte type: Luma Inverted"

    .line 518
    .line 519
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    .line 520
    .line 521
    .line 522
    goto :goto_7

    .line 523
    :cond_13
    const-string v1, "Unsupported matte type: Luma"

    .line 524
    .line 525
    invoke-virtual {v7, v1}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    :goto_7
    invoke-virtual {v7, v2}, Lcom/airbnb/lottie/j;->v(I)V

    .line 529
    .line 530
    .line 531
    goto/16 :goto_0

    .line 532
    .line 533
    :pswitch_10
    invoke-static/range {p0 .. p1}, Lcom/airbnb/lottie/parser/c;->g(Lcom/airbnb/lottie/parser/moshi/JsonReader;Lcom/airbnb/lottie/j;)Lcom/airbnb/lottie/model/animatable/l;

    .line 534
    .line 535
    .line 536
    move-result-object v15

    .line 537
    goto/16 :goto_0

    .line 538
    .line 539
    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 544
    .line 545
    .line 546
    move-result v26

    .line 547
    goto/16 :goto_0

    .line 548
    .line 549
    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 550
    .line 551
    .line 552
    move-result v1

    .line 553
    int-to-float v1, v1

    .line 554
    invoke-static {}, Lcom/airbnb/lottie/utils/l;->e()F

    .line 555
    .line 556
    .line 557
    move-result v2

    .line 558
    mul-float v1, v1, v2

    .line 559
    .line 560
    float-to-int v1, v1

    .line 561
    move/from16 v25, v1

    .line 562
    .line 563
    goto/16 :goto_0

    .line 564
    .line 565
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 566
    .line 567
    .line 568
    move-result v1

    .line 569
    int-to-float v1, v1

    .line 570
    invoke-static {}, Lcom/airbnb/lottie/utils/l;->e()F

    .line 571
    .line 572
    .line 573
    move-result v2

    .line 574
    mul-float v1, v1, v2

    .line 575
    .line 576
    float-to-int v1, v1

    .line 577
    move/from16 v24, v1

    .line 578
    .line 579
    goto/16 :goto_0

    .line 580
    .line 581
    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    int-to-long v1, v1

    .line 586
    move-wide/from16 v21, v1

    .line 587
    .line 588
    goto/16 :goto_0

    .line 589
    .line 590
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 591
    .line 592
    .line 593
    move-result v1

    .line 594
    sget-object v20, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->UNKNOWN:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 595
    .line 596
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Enum;->ordinal()I

    .line 597
    .line 598
    .line 599
    move-result v2

    .line 600
    if-ge v1, v2, :cond_0

    .line 601
    .line 602
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 603
    .line 604
    .line 605
    move-result-object v2

    .line 606
    aget-object v20, v2, v1

    .line 607
    .line 608
    goto/16 :goto_0

    .line 609
    .line 610
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Ljava/lang/String;

    .line 611
    .line 612
    .line 613
    move-result-object v23

    .line 614
    goto/16 :goto_0

    .line 615
    .line 616
    :pswitch_17
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->k()I

    .line 617
    .line 618
    .line 619
    move-result v1

    .line 620
    int-to-long v1, v1

    .line 621
    move-wide/from16 v17, v1

    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->o()Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v13

    .line 629
    goto/16 :goto_0

    .line 630
    .line 631
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/parser/moshi/JsonReader;->f()V

    .line 632
    .line 633
    .line 634
    new-instance v9, Ljava/util/ArrayList;

    .line 635
    .line 636
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 637
    .line 638
    .line 639
    cmpl-float v0, v19, v11

    .line 640
    .line 641
    if-lez v0, :cond_15

    .line 642
    .line 643
    new-instance v5, Lcom/airbnb/lottie/value/a;

    .line 644
    .line 645
    const/4 v4, 0x0

    .line 646
    const/16 v40, 0x0

    .line 647
    .line 648
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 649
    .line 650
    .line 651
    move-result-object v41

    .line 652
    move-object v0, v5

    .line 653
    move-object/from16 v1, p1

    .line 654
    .line 655
    move-object v2, v12

    .line 656
    move-object v3, v12

    .line 657
    move-object v11, v5

    .line 658
    move/from16 v5, v40

    .line 659
    .line 660
    move-object/from16 v40, v10

    .line 661
    .line 662
    move v10, v6

    .line 663
    move-object/from16 v6, v41

    .line 664
    .line 665
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/a;-><init>(Lcom/airbnb/lottie/j;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 666
    .line 667
    .line 668
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    .line 670
    .line 671
    goto :goto_8

    .line 672
    :cond_15
    move-object/from16 v40, v10

    .line 673
    .line 674
    move v10, v6

    .line 675
    :goto_8
    const/4 v0, 0x0

    .line 676
    cmpl-float v0, v39, v0

    .line 677
    .line 678
    if-lez v0, :cond_16

    .line 679
    .line 680
    goto :goto_9

    .line 681
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/j;->f()F

    .line 682
    .line 683
    .line 684
    move-result v0

    .line 685
    move/from16 v39, v0

    .line 686
    .line 687
    :goto_9
    new-instance v11, Lcom/airbnb/lottie/value/a;

    .line 688
    .line 689
    const/4 v4, 0x0

    .line 690
    invoke-static/range {v39 .. v39}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 691
    .line 692
    .line 693
    move-result-object v6

    .line 694
    move-object v0, v11

    .line 695
    move-object/from16 v1, p1

    .line 696
    .line 697
    move-object/from16 v2, v16

    .line 698
    .line 699
    move-object/from16 v3, v16

    .line 700
    .line 701
    move/from16 v5, v19

    .line 702
    .line 703
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/a;-><init>(Lcom/airbnb/lottie/j;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 704
    .line 705
    .line 706
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    new-instance v11, Lcom/airbnb/lottie/value/a;

    .line 710
    .line 711
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 712
    .line 713
    .line 714
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 715
    .line 716
    .line 717
    move-result-object v6

    .line 718
    move-object v0, v11

    .line 719
    move-object v2, v12

    .line 720
    move-object v3, v12

    .line 721
    move/from16 v5, v39

    .line 722
    .line 723
    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/value/a;-><init>(Lcom/airbnb/lottie/j;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 724
    .line 725
    .line 726
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 727
    .line 728
    .line 729
    const-string v0, ".ai"

    .line 730
    .line 731
    invoke-virtual {v13, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 732
    .line 733
    .line 734
    move-result v0

    .line 735
    if-nez v0, :cond_17

    .line 736
    .line 737
    const-string v0, "ai"

    .line 738
    .line 739
    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 740
    .line 741
    .line 742
    move-result v0

    .line 743
    if-eqz v0, :cond_18

    .line 744
    .line 745
    :cond_17
    const-string v0, "Convert your Illustrator layers to shape layers."

    .line 746
    .line 747
    invoke-virtual {v7, v0}, Lcom/airbnb/lottie/j;->a(Ljava/lang/String;)V

    .line 748
    .line 749
    .line 750
    :cond_18
    if-eqz v10, :cond_1a

    .line 751
    .line 752
    if-nez v15, :cond_19

    .line 753
    .line 754
    new-instance v15, Lcom/airbnb/lottie/model/animatable/l;

    .line 755
    .line 756
    invoke-direct {v15}, Lcom/airbnb/lottie/model/animatable/l;-><init>()V

    .line 757
    .line 758
    .line 759
    :cond_19
    invoke-virtual {v15, v10}, Lcom/airbnb/lottie/model/animatable/l;->m(Z)V

    .line 760
    .line 761
    .line 762
    :cond_1a
    move-object v11, v15

    .line 763
    new-instance v39, Lcom/airbnb/lottie/model/layer/Layer;

    .line 764
    .line 765
    move-object/from16 v0, v39

    .line 766
    .line 767
    move-object v1, v8

    .line 768
    move-object/from16 v2, p1

    .line 769
    .line 770
    move-object v3, v13

    .line 771
    move-wide/from16 v4, v17

    .line 772
    .line 773
    move-object/from16 v6, v20

    .line 774
    .line 775
    move-wide/from16 v7, v21

    .line 776
    .line 777
    move-object/from16 v21, v9

    .line 778
    .line 779
    move-object/from16 v9, v23

    .line 780
    .line 781
    move-object/from16 v10, v40

    .line 782
    .line 783
    move/from16 v12, v24

    .line 784
    .line 785
    move/from16 v13, v25

    .line 786
    .line 787
    move/from16 v14, v26

    .line 788
    .line 789
    move/from16 v15, v27

    .line 790
    .line 791
    move/from16 v16, v28

    .line 792
    .line 793
    move/from16 v17, v29

    .line 794
    .line 795
    move/from16 v18, v30

    .line 796
    .line 797
    move-object/from16 v19, v31

    .line 798
    .line 799
    move-object/from16 v20, v32

    .line 800
    .line 801
    move-object/from16 v22, v33

    .line 802
    .line 803
    move-object/from16 v23, v34

    .line 804
    .line 805
    move/from16 v24, v35

    .line 806
    .line 807
    move-object/from16 v25, v36

    .line 808
    .line 809
    move-object/from16 v26, v37

    .line 810
    .line 811
    move-object/from16 v27, v38

    .line 812
    .line 813
    invoke-direct/range {v0 .. v27}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/j;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/l;IIIFFFFLcom/airbnb/lottie/model/animatable/j;Lcom/airbnb/lottie/model/animatable/k;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/b;ZLcom/airbnb/lottie/model/content/a;Lcom/airbnb/lottie/parser/j;Lcom/airbnb/lottie/model/content/LBlendMode;)V

    .line 814
    .line 815
    .line 816
    return-object v39

    .line 817
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
