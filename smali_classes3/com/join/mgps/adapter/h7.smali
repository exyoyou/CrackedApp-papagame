.class public Lcom/join/mgps/adapter/h7;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/h7$f;,
        Lcom/join/mgps/adapter/h7$h;,
        Lcom/join/mgps/adapter/h7$l;,
        Lcom/join/mgps/adapter/h7$j;,
        Lcom/join/mgps/adapter/h7$o;,
        Lcom/join/mgps/adapter/h7$m;,
        Lcom/join/mgps/adapter/h7$g;,
        Lcom/join/mgps/adapter/h7$k;,
        Lcom/join/mgps/adapter/h7$n;,
        Lcom/join/mgps/adapter/h7$i;
    }
.end annotation


# static fields
.field public static final j:I = 0x1

.field public static final k:I = 0x2

.field public static final l:I = 0x3

.field public static final m:I = 0x4

.field public static final n:I = 0x5

.field public static final o:I = 0x6

.field public static final p:I = 0x7

.field public static final q:I = 0x8

.field public static final r:I = 0x9


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h7$f;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "typeId",
            "title"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/h7;->g:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    .line 8
    .line 9
    iput p2, p0, Lcom/join/mgps/adapter/h7;->h:I

    .line 10
    .line 11
    iput-object p3, p0, Lcom/join/mgps/adapter/h7;->i:Ljava/lang/String;

    .line 12
    .line 13
    move-object p2, p1

    .line 14
    check-cast p2, Landroid/app/Activity;

    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-virtual {p2}, Landroid/view/Display;->getWidth()I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iput p2, p0, Lcom/join/mgps/adapter/h7;->d:I

    .line 29
    .line 30
    const/high16 p2, 0x41400000    # 12.0f

    .line 31
    .line 32
    invoke-static {p1, p2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    iput p1, p0, Lcom/join/mgps/adapter/h7;->f:I

    .line 37
    .line 38
    iget p2, p0, Lcom/join/mgps/adapter/h7;->d:I

    .line 39
    .line 40
    mul-int/lit8 p1, p1, 0x2

    .line 41
    .line 42
    sub-int/2addr p2, p1

    .line 43
    iput p2, p0, Lcom/join/mgps/adapter/h7;->d:I

    .line 44
    .line 45
    mul-int/lit16 p2, p2, 0xe5

    .line 46
    .line 47
    div-int/lit16 p2, p2, 0x298

    .line 48
    .line 49
    iput p2, p0, Lcom/join/mgps/adapter/h7;->e:I

    .line 50
    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/h7;->i(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V

    return-void
.end method

.method static synthetic b(Lcom/join/mgps/adapter/h7;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/h7;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/adapter/h7;->h:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/h7;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/h7;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private synthetic i(Lcom/join/mgps/dto/CollectionBeanSub;Landroid/view/View;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_tpl_type()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tpl_two_position()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/dto/DownloadPointBase;->get_from_type()I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    invoke-virtual/range {v0 .. v5}, Lcom/join/mgps/Util/IntentUtil;->goGameDetialActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method e(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "score",
            "down_count",
            "appSize",
            "showTip",
            "tags",
            "view",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/join/mgps/dto/TipNew;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/TipBean;",
            ">;",
            "Landroid/widget/LinearLayout;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    invoke-static/range {p3 .. p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "1"

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v1, p3

    .line 12
    .line 13
    :goto_0
    invoke-virtual/range {p6 .. p6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 14
    .line 15
    .line 16
    invoke-static/range {p7 .. p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const v3, 0x7f0d00d1

    .line 21
    .line 22
    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const v3, 0x7f0a0108

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Landroid/widget/TextView;

    .line 36
    .line 37
    const v5, 0x7f0a0114

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    check-cast v5, Landroid/widget/TextView;

    .line 45
    .line 46
    const v6, 0x7f0a00fd

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Landroid/widget/TextView;

    .line 54
    .line 55
    const v7, 0x7f0a1255

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v7

    .line 62
    check-cast v7, Landroid/widget/TextView;

    .line 63
    .line 64
    invoke-static/range {p2 .. p2}, Lcom/join/mgps/Util/t2;->c(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    const-wide/high16 v8, 0x4130000000000000L    # 1048576.0

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 74
    .line 75
    .line 76
    move-result-wide v10

    .line 77
    mul-double v10, v10, v8

    .line 78
    .line 79
    double-to-long v8, v10

    .line 80
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->Z2(J)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    const/16 v5, 0x8

    .line 89
    .line 90
    if-eqz p4, :cond_d

    .line 91
    .line 92
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    if-eqz v8, :cond_c

    .line 97
    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v9

    .line 106
    const-string v10, "7"

    .line 107
    .line 108
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v9

    .line 112
    const-string v10, "\u00b7"

    .line 113
    .line 114
    if-nez v9, :cond_5

    .line 115
    .line 116
    const-string v9, "23"

    .line 117
    .line 118
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v8

    .line 126
    if-eqz v8, :cond_1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_1
    if-eqz p5, :cond_3

    .line 130
    .line 131
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 136
    .line 137
    .line 138
    move-result v9

    .line 139
    if-eqz v9, :cond_3

    .line 140
    .line 141
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    check-cast v9, Lcom/join/mgps/dto/TipBean;

    .line 146
    .line 147
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v11

    .line 151
    invoke-static {v11}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v11

    .line 155
    if-eqz v11, :cond_2

    .line 156
    .line 157
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 162
    .line 163
    .line 164
    move-result-object v12

    .line 165
    invoke-virtual {v12}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v12

    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v11

    .line 173
    if-nez v11, :cond_2

    .line 174
    .line 175
    move-object v4, v9

    .line 176
    :cond_3
    if-eqz v4, :cond_4

    .line 177
    .line 178
    new-instance v8, Ljava/lang/StringBuilder;

    .line 179
    .line 180
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v4

    .line 201
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v4

    .line 208
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    goto/16 :goto_4

    .line 212
    .line 213
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_4

    .line 225
    .line 226
    :cond_5
    :goto_1
    const-string v4, "\u5b89\u5353"

    .line 227
    .line 228
    if-eqz p5, :cond_b

    .line 229
    .line 230
    new-instance v8, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 236
    .line 237
    .line 238
    move-result-object v9

    .line 239
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 240
    .line 241
    .line 242
    move-result v11

    .line 243
    if-eqz v11, :cond_8

    .line 244
    .line 245
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    check-cast v11, Lcom/join/mgps/dto/TipBean;

    .line 250
    .line 251
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v12

    .line 255
    if-eqz v12, :cond_6

    .line 256
    .line 257
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v12

    .line 261
    const-string v13, ""

    .line 262
    .line 263
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v12

    .line 267
    if-nez v12, :cond_6

    .line 268
    .line 269
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v12

    .line 273
    const-string v13, "44"

    .line 274
    .line 275
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 276
    .line 277
    .line 278
    move-result v12

    .line 279
    if-nez v12, :cond_6

    .line 280
    .line 281
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v12

    .line 285
    const-string v13, "45"

    .line 286
    .line 287
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v12

    .line 291
    if-nez v12, :cond_6

    .line 292
    .line 293
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v12

    .line 297
    const-string v13, "47"

    .line 298
    .line 299
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v12

    .line 303
    if-nez v12, :cond_6

    .line 304
    .line 305
    invoke-virtual {v11}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v12

    .line 309
    const-string v13, "48"

    .line 310
    .line 311
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v12

    .line 315
    if-eqz v12, :cond_7

    .line 316
    .line 317
    goto :goto_2

    .line 318
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 319
    .line 320
    .line 321
    move-result v12

    .line 322
    const/4 v13, 0x2

    .line 323
    if-ge v12, v13, :cond_8

    .line 324
    .line 325
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_8
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 330
    .line 331
    .line 332
    move-result v9

    .line 333
    const/4 v11, 0x1

    .line 334
    if-le v9, v11, :cond_a

    .line 335
    .line 336
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v9

    .line 340
    check-cast v9, Lcom/join/mgps/dto/TipBean;

    .line 341
    .line 342
    if-eqz v9, :cond_9

    .line 343
    .line 344
    invoke-virtual {v9}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v4

    .line 348
    :cond_9
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 349
    .line 350
    .line 351
    move-result v9

    .line 352
    if-le v9, v11, :cond_b

    .line 353
    .line 354
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v8

    .line 358
    check-cast v8, Lcom/join/mgps/dto/TipBean;

    .line 359
    .line 360
    if-eqz v8, :cond_b

    .line 361
    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v4

    .line 377
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v4

    .line 384
    goto :goto_3

    .line 385
    :cond_a
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 386
    .line 387
    .line 388
    move-result v9

    .line 389
    if-lez v9, :cond_b

    .line 390
    .line 391
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v8

    .line 395
    check-cast v8, Lcom/join/mgps/dto/TipBean;

    .line 396
    .line 397
    if-eqz v8, :cond_b

    .line 398
    .line 399
    new-instance v9, Ljava/lang/StringBuilder;

    .line 400
    .line 401
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    :cond_b
    :goto_3
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 422
    .line 423
    .line 424
    goto :goto_4

    .line 425
    :cond_c
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 426
    .line 427
    .line 428
    :goto_4
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    .line 429
    .line 430
    .line 431
    move-result-object v4

    .line 432
    if-eqz v4, :cond_e

    .line 433
    .line 434
    invoke-virtual/range {p4 .. p4}, Lcom/join/mgps/dto/TipNew;->getDown_res()Lcom/join/mgps/dto/TipBean;

    .line 435
    .line 436
    .line 437
    move-result-object v4

    .line 438
    invoke-virtual {v4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v4

    .line 442
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    .line 444
    .line 445
    goto :goto_5

    .line 446
    :cond_d
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 447
    .line 448
    .line 449
    :cond_e
    :goto_5
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    if-eqz v3, :cond_f

    .line 454
    .line 455
    const-string v3, "0"

    .line 456
    .line 457
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v3

    .line 461
    if-nez v3, :cond_f

    .line 462
    .line 463
    new-instance v3, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    .line 470
    .line 471
    const-string v0, "\u5206"

    .line 472
    .line 473
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v7, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    .line 485
    .line 486
    goto :goto_6

    .line 487
    :cond_f
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 488
    .line 489
    .line 490
    :goto_6
    move-object/from16 v0, p6

    .line 491
    .line 492
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 493
    .line 494
    .line 495
    return-void
.end method

.method public f(I)Lcom/join/mgps/adapter/h7$f;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/h7$f;

    .line 8
    .line 9
    return-object p1
.end method

.method public g()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h7$f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 13
    .line 14
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/h7;->f(I)Lcom/join/mgps/adapter/h7$f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/h7$f;

    .line 8
    .line 9
    iget p1, p1, Lcom/join/mgps/adapter/h7$f;->b:I

    .line 10
    .line 11
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    move-object/from16 v9, p0

    .line 1
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/h7;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    packed-switch v0, :pswitch_data_0

    move-object/from16 v3, p2

    :goto_0
    move-object v2, v1

    move-object v4, v2

    :goto_1
    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    goto/16 :goto_4

    .line 2
    :pswitch_0
    new-instance v2, Lcom/join/mgps/adapter/h7$h;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/h7$h;-><init>(Lcom/join/mgps/adapter/h7;)V

    .line 3
    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0494

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    const v4, 0x7f0a15a1

    .line 4
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$h;->a:Landroid/widget/LinearLayout;

    const v4, 0x7f0a159f

    .line 5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$h;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0a15a2

    .line 6
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$h;->c:Landroid/widget/TextView;

    const v4, 0x7f0a15a0

    .line 7
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$h;->d:Landroid/widget/TextView;

    .line 8
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v1

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v4, v2

    goto/16 :goto_3

    .line 9
    :pswitch_1
    :try_start_2
    new-instance v2, Lcom/join/mgps/adapter/h7$o;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/h7$o;-><init>(Lcom/join/mgps/adapter/h7;)V

    .line 10
    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d049f

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    .line 11
    :try_start_3
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 12
    :pswitch_2
    :try_start_4
    new-instance v2, Lcom/join/mgps/adapter/h7$l;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/h7$l;-><init>(Lcom/join/mgps/adapter/h7;)V

    .line 13
    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d049c

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    const v4, 0x7f0a15a6

    .line 14
    :try_start_5
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$l;->a:Landroid/widget/LinearLayout;

    const v4, 0x7f0a15a5

    .line 15
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object v4, v1

    move-object v5, v4

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v6, v2

    goto/16 :goto_3

    .line 17
    :pswitch_3
    :try_start_6
    new-instance v2, Lcom/join/mgps/adapter/h7$j;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/h7$j;-><init>(Lcom/join/mgps/adapter/h7;)V

    .line 18
    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d049b

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 19
    :try_start_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 20
    :pswitch_4
    :try_start_8
    iget-object v2, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0496

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 21
    :try_start_9
    new-instance v3, Lcom/join/mgps/adapter/h7$i;

    invoke-direct {v3, v9}, Lcom/join/mgps/adapter/h7$i;-><init>(Lcom/join/mgps/adapter/h7;)V

    const v4, 0x7f0a169a

    .line 22
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/h7$i;->a:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v10, v3

    move-object v3, v2

    move-object v2, v8

    goto/16 :goto_4

    .line 24
    :pswitch_5
    :try_start_a
    iget-object v2, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d049d

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    .line 25
    :try_start_b
    new-instance v3, Lcom/join/mgps/adapter/h7$n;

    invoke-direct {v3, v9}, Lcom/join/mgps/adapter/h7$n;-><init>(Lcom/join/mgps/adapter/h7;)V

    const v4, 0x7f0a15a8

    .line 26
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/h7$n;->a:Landroid/widget/TextView;

    .line 27
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v10, v7

    move-object v8, v3

    :goto_2
    move-object v3, v2

    :goto_3
    move-object v2, v10

    goto/16 :goto_4

    .line 28
    :pswitch_6
    :try_start_c
    iget-object v2, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0606

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 29
    :try_start_d
    new-instance v3, Lcom/join/mgps/adapter/h7$k;

    invoke-direct {v3, v9}, Lcom/join/mgps/adapter/h7$k;-><init>(Lcom/join/mgps/adapter/h7;)V

    const v4, 0x7f0a1307

    .line 30
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/join/mgps/adapter/h7$k;->a:Landroid/widget/TextView;

    const v4, 0x7f0a1097

    .line 31
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v3, Lcom/join/mgps/adapter/h7$k;->b:Landroid/widget/RelativeLayout;

    .line 32
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v8, v6

    move-object v10, v8

    move-object v7, v3

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v10, v2

    goto/16 :goto_e

    .line 33
    :pswitch_7
    :try_start_e
    new-instance v2, Lcom/join/mgps/adapter/h7$g;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/h7$g;-><init>(Lcom/join/mgps/adapter/h7;)V

    .line 34
    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d0492

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5

    const v4, 0x7f0a1044

    .line 35
    :try_start_f
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v4, 0x7f0a0790

    .line 36
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->b:Landroid/widget/ImageView;

    const v4, 0x7f0a1042

    .line 37
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->c:Landroid/widget/TextView;

    const v4, 0x7f0a1043

    .line 38
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->g:Landroid/widget/TextView;

    const v4, 0x7f0a0e73

    .line 39
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->h:Landroid/widget/LinearLayout;

    const v4, 0x7f0a1764

    .line 40
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->i:Landroid/widget/LinearLayout;

    const v4, 0x7f0a00f7

    .line 41
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    const v4, 0x7f0a0f94

    .line 42
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->k:Landroid/widget/TextView;

    const v4, 0x7f0a129e

    .line 43
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    const v4, 0x7f0a12a5

    .line 44
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ProgressBar;

    iput-object v5, v2, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    const v5, 0x7f0a054e

    .line 45
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/customview/DownloadNormalView;

    iput-object v5, v2, Lcom/join/mgps/adapter/h7$g;->d:Lcom/join/mgps/customview/DownloadNormalView;

    const v5, 0x7f0a135c

    .line 46
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    iput-object v5, v2, Lcom/join/mgps/adapter/h7$g;->e:Landroid/widget/RelativeLayout;

    .line 47
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    const v4, 0x7f0a0e61

    .line 48
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$g;->f:Landroid/view/View;

    .line 49
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    move-object v4, v1

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v10, v8

    move-object v5, v2

    goto/16 :goto_3

    .line 50
    :pswitch_8
    :try_start_10
    new-instance v2, Lcom/join/mgps/adapter/h7$m;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/h7$m;-><init>(Lcom/join/mgps/adapter/h7;)V

    .line 51
    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d049e

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5

    const v4, 0x7f0a15a7

    .line 52
    :try_start_11
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$m;->a:Landroid/widget/TextView;

    const v4, 0x7f0a15a4

    .line 53
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, v2, Lcom/join/mgps/adapter/h7$m;->b:Landroid/widget/RelativeLayout;

    .line 54
    invoke-virtual {v3, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    move-object v4, v1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    move-object v10, v3

    goto/16 :goto_e

    :goto_4
    move-object v11, v5

    move-object/from16 v20, v10

    move-object v10, v3

    move-object/from16 v3, v20

    goto/16 :goto_a

    :cond_0
    packed-switch v0, :pswitch_data_1

    goto/16 :goto_5

    .line 55
    :pswitch_9
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/join/mgps/adapter/h7$h;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v6, v3

    goto/16 :goto_7

    .line 56
    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h7$o;

    goto/16 :goto_5

    .line 57
    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/join/mgps/adapter/h7$l;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v7, v4

    goto/16 :goto_8

    .line 58
    :pswitch_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h7$j;

    goto/16 :goto_5

    .line 59
    :pswitch_d
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/join/mgps/adapter/h7$i;

    move-object v2, v1

    move-object v4, v2

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v11, v8

    move-object v3, v10

    move-object/from16 v10, p2

    goto/16 :goto_a

    .line 60
    :pswitch_e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/join/mgps/adapter/h7$n;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v11, v7

    goto :goto_a

    .line 61
    :pswitch_f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lcom/join/mgps/adapter/h7$k;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v8, v6

    goto :goto_9

    .line 62
    :pswitch_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/join/mgps/adapter/h7$g;

    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v11, v5

    goto :goto_a

    .line 63
    :pswitch_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/adapter/h7$m;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5

    move-object/from16 v10, p2

    move-object v3, v1

    goto :goto_6

    :goto_5
    move-object/from16 v10, p2

    move-object v2, v1

    move-object v3, v2

    :goto_6
    move-object v4, v3

    move-object v6, v4

    :goto_7
    move-object v7, v6

    :goto_8
    move-object v8, v7

    :goto_9
    move-object v11, v8

    .line 64
    :goto_a
    :try_start_13
    iget-object v5, v9, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    move/from16 v12, p1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/join/mgps/adapter/h7$f;

    const/4 v12, 0x1

    if-eq v0, v12, :cond_12

    const/4 v12, 0x7

    const/4 v13, 0x5

    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eq v0, v15, :cond_8

    if-eq v0, v14, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    if-eq v0, v13, :cond_5

    const/4 v2, 0x0

    if-eq v0, v12, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    goto/16 :goto_f

    .line 65
    :cond_1
    iget-object v0, v5, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;

    .line 66
    iget-object v3, v4, Lcom/join/mgps/adapter/h7$h;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getSub_title()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v3, v4, Lcom/join/mgps/adapter/h7$h;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v3, v4, Lcom/join/mgps/adapter/h7$h;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SimulatorFbaEncyclopediasBean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 71
    :cond_2
    iget-object v0, v4, Lcom/join/mgps/adapter/h7$h;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h7$a;

    invoke-direct {v2, v9, v1}, Lcom/join/mgps/adapter/h7$a;-><init>(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 72
    :cond_3
    iget-object v0, v5, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;

    .line 73
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, v9, Lcom/join/mgps/adapter/h7;->d:I

    iget v5, v9, Lcom/join/mgps/adapter/h7;->e:I

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 74
    iget v4, v9, Lcom/join/mgps/adapter/h7;->f:I

    invoke-virtual {v3, v4, v2, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 75
    iget-object v4, v6, Lcom/join/mgps/adapter/h7$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    iget-object v3, v6, Lcom/join/mgps/adapter/h7$l;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;->getMain()Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$MainBean;->getPic_remote()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;->getSub()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean;->getSub()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;

    .line 79
    :cond_4
    iget-object v0, v6, Lcom/join/mgps/adapter/h7$l;->a:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/join/mgps/adapter/h7$b;

    invoke-direct {v2, v9, v1}, Lcom/join/mgps/adapter/h7$b;-><init>(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/SimulatorAreaDataBean$SubjectListBean$SubBean;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 80
    :cond_5
    iget-object v0, v5, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;

    .line 81
    iget-object v1, v3, Lcom/join/mgps/adapter/h7$i;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v1, v3, Lcom/join/mgps/adapter/h7$i;->a:Landroid/widget/TextView;

    new-instance v2, Lcom/join/mgps/adapter/h7$c;

    invoke-direct {v2, v9, v0}, Lcom/join/mgps/adapter/h7$c;-><init>(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/SimulatorAreaDataBean$GameTypeBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 83
    :cond_6
    iget-object v0, v5, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 84
    iget-object v1, v8, Lcom/join/mgps/adapter/h7$n;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 85
    :cond_7
    iget-object v0, v7, Lcom/join/mgps/adapter/h7$k;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/join/mgps/adapter/h7$d;

    invoke-direct {v1, v9}, Lcom/join/mgps/adapter/h7$d;-><init>(Lcom/join/mgps/adapter/h7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_f

    .line 86
    :cond_8
    iget-object v0, v5, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 87
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v16

    .line 88
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double v1, v1, v3

    mul-double v1, v1, v3

    double-to-long v7, v1

    .line 89
    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v3

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    move-result-object v6

    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->i:Landroid/widget/LinearLayout;

    iget-object v12, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    move-object/from16 v17, v1

    move-object/from16 v1, p0

    move-wide/from16 v18, v7

    move-object/from16 v7, v17

    move-object v8, v12

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/adapter/h7;->e(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 91
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v1

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 92
    invoke-virtual {v0}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->z1(Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/dto/CollectionBeanSub;)V

    .line 93
    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->d:Lcom/join/mgps/customview/DownloadNormalView;

    new-instance v2, Lm6/c;

    iget-object v3, v9, Lcom/join/mgps/adapter/h7;->b:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 94
    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->e:Landroid/widget/RelativeLayout;

    new-instance v2, Lcom/join/mgps/adapter/g7;

    invoke-direct {v2, v9, v0}, Lcom/join/mgps/adapter/g7;-><init>(Lcom/join/mgps/adapter/h7;Lcom/join/mgps/dto/CollectionBeanSub;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 98
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->i:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_9
    if-nez v16, :cond_a

    .line 100
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_f

    :cond_a
    const-string v0, "infoo"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_4

    if-eqz v0, :cond_11

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_10

    const/16 v1, 0x30

    if-eq v0, v1, :cond_f

    const-wide/16 v1, 0x0

    const-string v3, "/"

    if-eq v0, v15, :cond_d

    if-eq v0, v14, :cond_b

    if-eq v0, v13, :cond_10

    const/4 v4, 0x6

    if-eq v0, v4, :cond_b

    const/4 v4, 0x7

    if-eq v0, v4, :cond_11

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_f

    .line 103
    :pswitch_12
    :try_start_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 104
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->k:Landroid/widget/TextView;

    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_f

    .line 107
    :pswitch_13
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 108
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->k:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_f

    .line 111
    :pswitch_14
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 112
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_4

    .line 113
    :try_start_15
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    .line 114
    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    :goto_b
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->k:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 116
    :pswitch_15
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_f

    .line 117
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_4

    .line 118
    :try_start_17
    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_c

    .line 119
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 120
    :cond_c
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :goto_c
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    goto/16 :goto_f

    :catch_3
    move-exception v0

    .line 122
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_f

    .line 123
    :cond_d
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 124
    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v4

    cmp-long v0, v4, v1

    if-nez v0, :cond_e

    .line 125
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_d

    .line 126
    :cond_e
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->j:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v18 .. v19}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :goto_d
    iget-object v0, v11, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 128
    invoke-virtual/range {v16 .. v16}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 129
    iget-object v1, v11, Lcom/join/mgps/adapter/h7$g;->k:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 130
    :cond_f
    :pswitch_16
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 131
    :cond_10
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 132
    :cond_11
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/h7;->j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_f

    .line 133
    :cond_12
    iget-object v0, v5, Lcom/join/mgps/adapter/h7$f;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 134
    iget-object v1, v2, Lcom/join/mgps/adapter/h7$m;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, v2, Lcom/join/mgps/adapter/h7$m;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/join/mgps/adapter/h7$e;

    invoke-direct {v1, v9}, Lcom/join/mgps/adapter/h7$e;-><init>(Lcom/join/mgps/adapter/h7;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_4

    goto :goto_f

    :catch_4
    move-exception v0

    goto :goto_e

    :catch_5
    move-exception v0

    move-object/from16 v10, p2

    .line 136
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception_tbl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Exception"

    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-object v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_15
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public h()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v1, 0x0

    .line 19
    if-gtz v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/h7;->c:Ljava/util/List;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    sub-int/2addr v2, v3

    .line 30
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/join/mgps/adapter/h7$f;

    .line 35
    .line 36
    iget v0, v0, Lcom/join/mgps/adapter/h7$f;->b:I

    .line 37
    .line 38
    const/4 v2, 0x5

    .line 39
    if-eq v0, v2, :cond_3

    .line 40
    .line 41
    const/4 v2, 0x4

    .line 42
    if-ne v0, v2, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return v1

    .line 46
    :cond_3
    :goto_0
    return v3
.end method

.method j(Lcom/join/mgps/adapter/h7$g;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->h:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->i:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/adapter/h7$g;->g:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->h:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->m:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->l:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/h7$g;->i:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/adapter/h7$g;->g:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method
