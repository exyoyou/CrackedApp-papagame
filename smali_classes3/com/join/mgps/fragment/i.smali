.class public Lcom/join/mgps/fragment/i;
.super Lcom/join/mgps/basefragment/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0283
.end annotation


# instance fields
.field d:Lcom/join/mgps/customview/FlowLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/mgps/rpc/e;

.field h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/i;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private Z()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v1, v0, Lcom/join/mgps/fragment/i;->h:Ljava/util/List;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;-><init>()V

    .line 13
    .line 14
    .line 15
    const/16 v1, 0x11

    .line 16
    .line 17
    new-array v2, v1, [I

    .line 18
    .line 19
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FEATURED_ONLINE:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    aput v3, v2, v4

    .line 27
    .line 28
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->LARGE_SINGLE:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 29
    .line 30
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v5, 0x1

    .line 35
    aput v3, v2, v5

    .line 36
    .line 37
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    const/4 v5, 0x2

    .line 44
    aput v3, v2, v5

    .line 45
    .line 46
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->FC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    const/4 v5, 0x3

    .line 53
    aput v3, v2, v5

    .line 54
    .line 55
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBA:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 56
    .line 57
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    const/4 v5, 0x4

    .line 62
    aput v3, v2, v5

    .line 63
    .line 64
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PSP:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    const/4 v5, 0x5

    .line 71
    aput v3, v2, v5

    .line 72
    .line 73
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    const/4 v5, 0x6

    .line 80
    aput v3, v2, v5

    .line 81
    .line 82
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->NDS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    const/4 v5, 0x7

    .line 89
    aput v3, v2, v5

    .line 90
    .line 91
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->MD:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    const/16 v5, 0x8

    .line 98
    .line 99
    aput v3, v2, v5

    .line 100
    .line 101
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->ONS:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 102
    .line 103
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    const/16 v5, 0x9

    .line 108
    .line 109
    aput v3, v2, v5

    .line 110
    .line 111
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->SFC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 112
    .line 113
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    const/16 v5, 0xa

    .line 118
    .line 119
    aput v3, v2, v5

    .line 120
    .line 121
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->GBC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 122
    .line 123
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    const/16 v5, 0xb

    .line 128
    .line 129
    aput v3, v2, v5

    .line 130
    .line 131
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->N64:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 132
    .line 133
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    const/16 v5, 0xc

    .line 138
    .line 139
    aput v3, v2, v5

    .line 140
    .line 141
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->WSC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    const/16 v5, 0xd

    .line 148
    .line 149
    aput v3, v2, v5

    .line 150
    .line 151
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->DC:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 154
    .line 155
    .line 156
    move-result v3

    .line 157
    const/16 v5, 0xe

    .line 158
    .line 159
    aput v3, v2, v5

    .line 160
    .line 161
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->PS2:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    const/16 v5, 0xf

    .line 168
    .line 169
    aput v3, v2, v5

    .line 170
    .line 171
    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 174
    .line 175
    .line 176
    move-result v3

    .line 177
    const/16 v5, 0x10

    .line 178
    .line 179
    aput v3, v2, v5

    .line 180
    .line 181
    new-array v3, v1, [I

    .line 182
    .line 183
    fill-array-data v3, :array_0

    .line 184
    .line 185
    .line 186
    const-string v5, "\u7f51\u6e38"

    .line 187
    .line 188
    const-string v6, "\u5355\u673a"

    .line 189
    .line 190
    const-string v7, "\u8857\u673a"

    .line 191
    .line 192
    const-string v8, "FC\u5c0f\u9738\u738b"

    .line 193
    .line 194
    const-string v9, "GBA"

    .line 195
    .line 196
    const-string v10, "PSP"

    .line 197
    .line 198
    const-string v11, "PS"

    .line 199
    .line 200
    const-string v12, "NDS"

    .line 201
    .line 202
    const-string v13, "MD"

    .line 203
    .line 204
    const-string v14, "ONS"

    .line 205
    .line 206
    const-string v15, "SFC"

    .line 207
    .line 208
    const-string v16, "GBC"

    .line 209
    .line 210
    const-string v17, "N64"

    .line 211
    .line 212
    const-string v18, "WSC"

    .line 213
    .line 214
    const-string v19, "DC"

    .line 215
    .line 216
    const-string v20, "PS2"

    .line 217
    .line 218
    const-string v21, "H5"

    .line 219
    .line 220
    filled-new-array/range {v5 .. v21}, [Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    const-string v6, "\u6f6e\u6d41\u7f51\u7edc\u6e38\u620f"

    .line 225
    .line 226
    const-string v7, "\u4f18\u79c0\u5927\u578b\u5355\u673a\uff0c\u6c49\u5316\u7834\u89e3\u4e00\u7f51\u6253\u5c3d"

    .line 227
    .line 228
    const-string v8, "\u7ecf\u5178\u8857\u673a\u623f\u6e38\u620f\uff0c\u4ee3\u8868\u6e38\u620f\u6709\u62f3\u7687\u3001\u5408\u91d1\u5f39\u5934\u3001\u6050\u9f99\u5feb\u6253\u3001\u4e09\u56fd\u6218\u7eaa\u7b49"

    .line 229
    .line 230
    const-string v9, "\u4efb\u5929\u5802\u57281983\u5e74\u53d1\u552e\u7684\u6e38\u620f\u673a\uff0c\u4ee3\u8868\u6e38\u620f\u6709\u8d85\u7ea7\u739b\u4e3d\uff0c\u9b42\u6597\u7f57\u7b49"

    .line 231
    .line 232
    const-string v10, "\u4efb\u5929\u5802\u4e8e2001\u5e74\u53d1\u552e\u7684\u7b2c\u4e8c\u4ee3\u638c\u673a\uff0c\u4ee3\u8868\u6e38\u620f\u6709\u53e3\u888b\u5996\u602a\uff0c\u706b\u7130\u7eb9\u7ae0\u7b49"

    .line 233
    .line 234
    const-string v11, "\u7d22\u5c3c\u7ecf\u5178\u638c\u673a"

    .line 235
    .line 236
    const-string v12, "\u7d22\u5c3c\u7535\u89c6\u4e3b\u673a"

    .line 237
    .line 238
    const-string v13, "\u4efb\u5929\u5802DS\u6e38\u620f"

    .line 239
    .line 240
    const-string v14, "\u4e16\u5609MD\u4e3b\u673a"

    .line 241
    .line 242
    const-string v15, "GAL\u6a21\u62df\u5668"

    .line 243
    .line 244
    const-string v16, "\u4efb\u5929\u5802SNES\u4e3b\u673a"

    .line 245
    .line 246
    const-string v17, "\u4efb\u5929\u5802\u7b2c\u4e8c\u4ee3\u638c\u673a"

    .line 247
    .line 248
    const-string v18, "\u4efb\u5929\u5802\u7ecf\u5178\u4e3b\u673a"

    .line 249
    .line 250
    const-string v19, "\u7ecf\u5178\u638c\u673a\u795e\u5947\u5929\u9e45"

    .line 251
    .line 252
    const-string v20, "\u4efb\u5929\u5802\u7ecf\u5178\u4e3b\u673a"

    .line 253
    .line 254
    const-string v21, "\u4efb\u5929\u5802\u7ecf\u5178\u4e3b\u673a"

    .line 255
    .line 256
    const-string v22, "\u9875\u6e38"

    .line 257
    .line 258
    filled-new-array/range {v6 .. v22}, [Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    new-instance v7, Ljava/util/HashMap;

    .line 263
    .line 264
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 265
    .line 266
    .line 267
    iput-object v7, v0, Lcom/join/mgps/fragment/i;->f:Ljava/util/HashMap;

    .line 268
    .line 269
    iget-object v7, v0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 270
    .line 271
    const/high16 v8, 0x3f800000    # 1.0f

    .line 272
    .line 273
    invoke-static {v7, v8}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 274
    .line 275
    .line 276
    move-result v7

    .line 277
    const/4 v8, 0x0

    .line 278
    :goto_0
    if-ge v8, v1, :cond_1

    .line 279
    .line 280
    new-instance v9, Lcom/join/mgps/customview/CellClassifyItem;

    .line 281
    .line 282
    iget-object v10, v0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 283
    .line 284
    invoke-direct {v9, v10}, Lcom/join/mgps/customview/CellClassifyItem;-><init>(Landroid/content/Context;)V

    .line 285
    .line 286
    .line 287
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 288
    .line 289
    const/4 v11, -0x1

    .line 290
    const/4 v12, -0x2

    .line 291
    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 292
    .line 293
    .line 294
    if-eqz v8, :cond_0

    .line 295
    .line 296
    invoke-virtual {v10, v4, v7, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 297
    .line 298
    .line 299
    :cond_0
    invoke-virtual {v9, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    aget v10, v2, v8

    .line 303
    .line 304
    aget v11, v3, v8

    .line 305
    .line 306
    aget-object v12, v5, v8

    .line 307
    .line 308
    aget-object v13, v6, v8

    .line 309
    .line 310
    new-instance v14, Lcom/join/mgps/fragment/i$a;

    .line 311
    .line 312
    invoke-direct {v14, v0, v10, v12}, Lcom/join/mgps/fragment/i$a;-><init>(Lcom/join/mgps/fragment/i;ILjava/lang/String;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {v9, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v9, v10}, Lcom/join/mgps/customview/CellClassifyItem;->setmId(I)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v9, v12}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9, v13}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {v9, v11}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconRes(I)V

    .line 328
    .line 329
    .line 330
    iget-object v11, v0, Lcom/join/mgps/fragment/i;->e:Landroid/widget/LinearLayout;

    .line 331
    .line 332
    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 333
    .line 334
    .line 335
    iget-object v11, v0, Lcom/join/mgps/fragment/i;->f:Ljava/util/HashMap;

    .line 336
    .line 337
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-virtual {v11, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    add-int/lit8 v8, v8, 0x1

    .line 345
    .line 346
    goto :goto_0

    .line 347
    :cond_1
    return-void

    .line 348
    nop

    .line 349
    :array_0
    .array-data 4
        0x7f080e98
        0x7f081212
        0x7f08057c
        0x7f08057e
        0x7f08065e
        0x7f080f6f
        0x7f080f6b
        0x7f080dab
        0x7f080cc2
        0x7f080e96
        0x7f08103f
        0x7f080662
        0x7f080da9
        0x7f0813bf
        0x7f080491
        0x7f080f6a
        0x7f080f6a
    .end array-data
.end method

.method private b0(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "game_tag_type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 20
    .line 21
    const/high16 v1, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-static {v0, v1}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    new-instance v3, Lcom/join/mgps/customview/CellClassifyItem;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/join/mgps/customview/CellClassifyItem;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .line 44
    const/4 v5, -0x1

    .line 45
    const/4 v6, -0x2

    .line 46
    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 47
    .line 48
    .line 49
    if-eqz v2, :cond_2

    .line 50
    .line 51
    invoke-virtual {v4, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v5

    .line 67
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getIco_remote()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getDescribe()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    new-instance v9, Lcom/join/mgps/fragment/i$b;

    .line 80
    .line 81
    invoke-direct {v9, p0, v5, v7}, Lcom/join/mgps/fragment/i$b;-><init>(Lcom/join/mgps/fragment/i;ILjava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v5}, Lcom/join/mgps/customview/CellClassifyItem;->setmId(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v8}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v6}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconSrc(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getGame_count()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {v3, v4}, Lcom/join/mgps/customview/CellClassifyItem;->setCountTip(I)V

    .line 104
    .line 105
    .line 106
    iget-object v4, p0, Lcom/join/mgps/fragment/i;->e:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 109
    .line 110
    .line 111
    add-int/lit8 v2, v2, 0x1

    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    const v0, 0x7f0d0283

    return v0
.end method

.method protected Q()I
    .locals 1

    .line 1
    const v0, 0x7f0a06c4

    return v0
.end method

.method a0(Lcom/join/mgps/dto/ClassifyBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->d:Lcom/join/mgps/customview/FlowLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_type()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_type()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->d:Lcom/join/mgps/customview/FlowLayout;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_type()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v3, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 34
    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 36
    .line 37
    invoke-static {v3, v4}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    const/4 v4, 0x0

    .line 42
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ge v4, v5, :cond_3

    .line 47
    .line 48
    new-instance v5, Lcom/join/mgps/customview/CellClassifyItem;

    .line 49
    .line 50
    iget-object v6, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 51
    .line 52
    invoke-direct {v5, v6}, Lcom/join/mgps/customview/CellClassifyItem;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 56
    .line 57
    const/4 v7, -0x1

    .line 58
    const/4 v8, -0x2

    .line 59
    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    if-eqz v4, :cond_0

    .line 63
    .line 64
    invoke-virtual {v6, v2, v3, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    check-cast v6, Lcom/join/mgps/dto/ClassifyGameTypeBean;

    .line 75
    .line 76
    new-instance v7, Lcom/join/mgps/fragment/i$c;

    .line 77
    .line 78
    invoke-direct {v7, p0, v6}, Lcom/join/mgps/fragment/i$c;-><init>(Lcom/join/mgps/fragment/i;Lcom/join/mgps/dto/ClassifyGameTypeBean;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getId()I

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmId(I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getTitle()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmName(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getDescribe()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmDesc(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getIco_remote()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setmIconSrc(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getGame_count()I

    .line 113
    .line 114
    .line 115
    move-result v7

    .line 116
    invoke-virtual {v5, v7}, Lcom/join/mgps/customview/CellClassifyItem;->setCountTip(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/join/mgps/dto/ClassifyGameTypeBean;->getDescribe()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-static {v6}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_1

    .line 128
    .line 129
    invoke-virtual {v5, v1}, Lcom/join/mgps/customview/CellClassifyItem;->setDescVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {v5, v2}, Lcom/join/mgps/customview/CellClassifyItem;->setDescVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/fragment/i;->d:Lcom/join/mgps/customview/FlowLayout;

    .line 137
    .line 138
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v4, v4, 0x1

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->d:Lcom/join/mgps/customview/FlowLayout;

    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    :cond_3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_tag_type()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_tag_type()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-lez v0, :cond_4

    .line 164
    .line 165
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyBean;->getGame_tag_type()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/i;->b0(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 173
    .line 174
    .line 175
    return-void
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/i;->g:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/i;->Z()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/i;->loadData()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected loadData()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->g:Lcom/join/mgps/rpc/e;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/q;->A()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const-string v3, ""

    .line 36
    .line 37
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameSortRequestBean(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->L(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x1

    .line 52
    if-ne v1, v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/join/mgps/dto/ClassifyBean;

    .line 69
    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/i;->a0(Lcom/join/mgps/dto/ClassifyBean;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 93
    .line 94
    .line 95
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    :try_start_0
    instance-of v0, p1, Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/AppBeanMain;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/AppBeanMain;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    instance-of v0, p1, Landroid/widget/RelativeLayout;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/fragment/i;->i:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/activity/ClassifyGameActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->a(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->b(I)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/ClassifyGameActivity_$n;->c(Ljava/lang/String;)Lcom/join/mgps/activity/ClassifyGameActivity_$n;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_0
    return-void
.end method
