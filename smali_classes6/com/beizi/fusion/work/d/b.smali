.class public Lcom/beizi/fusion/work/d/b;
.super Lcom/beizi/fusion/work/d/a;
.source "SourceFile"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:I

.field private H:Landroid/view/View;

.field private I:Ljava/lang/String;

.field private J:Z

.field private K:Z

.field private L:Ljava/lang/Boolean;

.field private M:Z

.field private N:J

.field private O:J

.field private P:J

.field private Q:Z

.field private R:Z

.field private S:J

.field private T:I

.field private U:I

.field private V:Landroid/widget/FrameLayout;

.field private W:Z

.field private X:[Ljava/lang/String;

.field private Y:J

.field private Z:Ljava/lang/String;

.field private aa:Z

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:Z

.field private ae:Z

.field private af:Landroid/view/ViewGroup;

.field private ag:Landroid/widget/FrameLayout;

.field private ah:J

.field private ai:Z

.field private aj:[Ljava/lang/String;

.field private ak:[Ljava/lang/String;

.field private al:I

.field private am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private an:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private v:Lcom/beizi/ad/v2/d/c;

.field private w:Lcom/beizi/ad/e;

.field private x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

.field private y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

.field private z:Lcom/beizi/fusion/tool/ad;


# direct methods
.method public constructor <init>(Landroid/content/Context;JJLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;IZZ)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    move-object v1, p0

    .line 3
    move-object v2, p1

    .line 4
    move-wide v3, p4

    .line 5
    move-object/from16 v5, p6

    .line 6
    .line 7
    move-object/from16 v6, p7

    .line 8
    .line 9
    move-object/from16 v7, p8

    .line 10
    .line 11
    move/from16 v8, p9

    .line 12
    .line 13
    invoke-direct/range {v1 .. v8}, Lcom/beizi/fusion/work/d/a;-><init>(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/c/e;I)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->A:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    iput-boolean v1, v9, Lcom/beizi/fusion/work/d/b;->B:Z

    .line 21
    .line 22
    iput-boolean v1, v9, Lcom/beizi/fusion/work/d/b;->C:Z

    .line 23
    .line 24
    iput-boolean v1, v9, Lcom/beizi/fusion/work/d/b;->D:Z

    .line 25
    .line 26
    iput v1, v9, Lcom/beizi/fusion/work/d/b;->G:I

    .line 27
    .line 28
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->I:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    new-array v2, v0, [Ljava/lang/String;

    .line 32
    .line 33
    iput-object v2, v9, Lcom/beizi/fusion/work/d/b;->X:[Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "#00000000"

    .line 36
    .line 37
    iput-object v2, v9, Lcom/beizi/fusion/work/d/b;->ac:Ljava/lang/String;

    .line 38
    .line 39
    const-string v2, "\u7cbe\u5f69\u5185\u5bb9\u66f4\u65b0"

    .line 40
    .line 41
    const-string v3, "\u4eca\u65e5\u63a8\u8350"

    .line 42
    .line 43
    const-string v4, "\u4e3a\u60a8\u63a8\u8350"

    .line 44
    .line 45
    const-string v5, "\u7cbe\u9009\u5448\u73b0"

    .line 46
    .line 47
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    iput-object v2, v9, Lcom/beizi/fusion/work/d/b;->aj:[Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "\u7acb\u5373\u63a2\u7d22\u65b0\u53d1\u73b0"

    .line 54
    .line 55
    const-string v3, "\u7cbe\u9009\u5185\u5bb9\u4e0d\u5bb9\u9519\u8fc7"

    .line 56
    .line 57
    const-string v4, "\u70b9\u51fb\u53d1\u73b0\u66f4\u591a\u7cbe\u5f69"

    .line 58
    .line 59
    const-string v5, "\u70b9\u51fb\u5373\u523b\u4e86\u89e3\u8be6\u60c5"

    .line 60
    .line 61
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, v9, Lcom/beizi/fusion/work/d/b;->ak:[Ljava/lang/String;

    .line 66
    .line 67
    new-instance v2, Ljava/util/Random;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/util/Random;->nextInt(I)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iput v0, v9, Lcom/beizi/fusion/work/d/b;->al:I

    .line 77
    .line 78
    new-instance v0, Lcom/beizi/fusion/work/d/b$11;

    .line 79
    .line 80
    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/d/b$11;-><init>(Lcom/beizi/fusion/work/d/b;)V

    .line 81
    .line 82
    .line 83
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 84
    .line 85
    new-instance v0, Lcom/beizi/fusion/work/d/b$2;

    .line 86
    .line 87
    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/d/b$2;-><init>(Lcom/beizi/fusion/work/d/b;)V

    .line 88
    .line 89
    .line 90
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->an:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 91
    .line 92
    move-wide v2, p2

    .line 93
    iput-wide v2, v9, Lcom/beizi/fusion/work/d/b;->O:J

    .line 94
    .line 95
    move/from16 v0, p10

    .line 96
    .line 97
    iput-boolean v0, v9, Lcom/beizi/fusion/work/d/b;->J:Z

    .line 98
    .line 99
    move/from16 v0, p11

    .line 100
    .line 101
    iput-boolean v0, v9, Lcom/beizi/fusion/work/d/b;->K:Z

    .line 102
    .line 103
    iget-object v0, v9, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getNativeOptimize()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getNativeUuid()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    iput-object v2, v9, Lcom/beizi/fusion/work/d/b;->Z:Ljava/lang/String;

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getAdSlide()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    .line 123
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getRandomNum()I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-static {v3}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    iput-boolean v3, v9, Lcom/beizi/fusion/work/d/b;->R:Z

    .line 132
    .line 133
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getNeedTime()I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    int-to-long v3, v3

    .line 138
    iput-wide v3, v9, Lcom/beizi/fusion/work/d/b;->S:J

    .line 139
    .line 140
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeAdSlideBean;->getDistance()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iput v2, v9, Lcom/beizi/fusion/work/d/b;->T:I

    .line 145
    .line 146
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getCloseClickNum()I

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    iput-boolean v2, v9, Lcom/beizi/fusion/work/d/b;->ab:Z

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getTouchDownNum()I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    iput-boolean v2, v9, Lcom/beizi/fusion/work/d/b;->ad:Z

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getHoldSlideNum()I

    .line 167
    .line 168
    .line 169
    move-result v2

    .line 170
    invoke-static {v2}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    iput-boolean v2, v9, Lcom/beizi/fusion/work/d/b;->ae:Z

    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getAddClickNum()I

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iput-boolean v0, v9, Lcom/beizi/fusion/work/d/b;->ai:Z

    .line 185
    .line 186
    :cond_1
    :try_start_0
    iget-object v0, v9, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategy()Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-lez v2, :cond_3

    .line 199
    .line 200
    const/4 v2, 0x1

    .line 201
    iput-boolean v2, v9, Lcom/beizi/fusion/work/d/b;->C:Z

    .line 202
    .line 203
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    if-ge v1, v2, :cond_3

    .line 208
    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    check-cast v2, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;

    .line 214
    .line 215
    const-string v3, "290.300"

    .line 216
    .line 217
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getEventCode()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v3

    .line 225
    if-eqz v3, :cond_2

    .line 226
    .line 227
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$CallBackStrategyBean;->getRate()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    iput-boolean v0, v9, Lcom/beizi/fusion/work/d/b;->D:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 243
    .line 244
    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .line 248
    .line 249
    :cond_3
    :goto_1
    iget-object v0, v9, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 250
    .line 251
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 256
    .line 257
    if-eqz v0, :cond_4

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getCoolShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 264
    .line 265
    iget-object v0, v9, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 266
    .line 267
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getClkremove()I

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    iput v0, v9, Lcom/beizi/fusion/work/d/b;->G:I

    .line 272
    .line 273
    iget-object v0, v9, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 274
    .line 275
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getTitle()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->I:Ljava/lang/String;

    .line 280
    .line 281
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v1, "cool_"

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    iget-object v1, v9, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 292
    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iput-object v0, v9, Lcom/beizi/fusion/work/d/b;->A:Ljava/lang/String;

    .line 301
    .line 302
    return-void
.end method

.method static synthetic A(Lcom/beizi/fusion/work/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/d/b;->U:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic B(Lcom/beizi/fusion/work/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/d/b;->T:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic C(Lcom/beizi/fusion/work/d/b;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic D(Lcom/beizi/fusion/work/d/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/b;->ah:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic E(Lcom/beizi/fusion/work/d/b;)Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->af:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object p0
.end method

.method private a(Ljava/lang/String;III)I
    .locals 2

    .line 112
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    const-string v0, "left"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "center"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p2, p3, :cond_2

    sub-int/2addr p2, p3

    .line 115
    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p4, p2

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    .line 116
    div-int/lit8 p3, p3, 0x2

    :goto_1
    add-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const-string v0, "right"

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    if-le p2, p3, :cond_4

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_4
    sub-int/2addr p3, p2

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_2
    if-gez p4, :cond_6

    const/4 p4, 0x0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return p4
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/beizi/fusion/work/d/b;->N:J

    return-wide p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Lcom/beizi/ad/e;)Lcom/beizi/ad/e;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/v2/d/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    return-object p0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Lcom/beizi/fusion/e/a;)Lcom/beizi/fusion/e/a;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getOrderList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 20
    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/work/d/b;->L:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(III)V
    .locals 5

    .line 21
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aR()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    if-nez v0, :cond_2

    .line 24
    new-instance v0, Lcom/beizi/fusion/tool/ad;

    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/beizi/fusion/tool/ad;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 28
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getOrderData()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 29
    invoke-virtual {v2}, Lcom/beizi/ad/v2/a/a;->b()Ljava/lang/String;

    move-result-object v2

    .line 30
    invoke-direct {p0, v1, v2}, Lcom/beizi/fusion/work/d/b;->a(Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 31
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 32
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$OrderDataShakeViewBean;->getShakeView()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getShakeViewUuid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 34
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v2, :cond_5

    .line 35
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setShakeViewUuid(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_5
    if-gtz p2, :cond_6

    move p2, p3

    .line 37
    :cond_6
    iget-object p3, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->L:Ljava/lang/Boolean;

    invoke-virtual {p3, v0}, Lcom/beizi/fusion/tool/ad;->a(Ljava/lang/Boolean;)V

    .line 38
    iget-object p3, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    int-to-float v2, p1

    .line 39
    invoke-static {v0, v2}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v0

    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    int-to-float v3, p2

    .line 40
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->b(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 41
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getPosition()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;

    move-result-object v3

    iget-object v4, p0, Lcom/beizi/fusion/work/d/b;->I:Ljava/lang/String;

    .line 42
    invoke-virtual {p3, v0, v2, v3, v4}, Lcom/beizi/fusion/tool/ad;->a(IILcom/beizi/fusion/model/AdSpacesBean$BuyerBean$PercentPositionBean;Ljava/lang/String;)Landroid/view/View;

    move-result-object p3

    iput-object p3, p0, Lcom/beizi/fusion/work/d/b;->H:Landroid/view/View;

    if-eqz p3, :cond_7

    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 44
    instance-of v0, p3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_7

    .line 45
    check-cast p3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 46
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 47
    iget v2, p3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 48
    iget p3, p3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 49
    iget-object p3, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getIsHideAnim()I

    move-result p3

    if-nez p3, :cond_7

    .line 50
    iget-object p3, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->H:Landroid/view/View;

    invoke-virtual {p3, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    :cond_7
    invoke-direct {p0, v1}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    .line 52
    iget-object p3, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    new-instance v0, Lcom/beizi/fusion/work/d/b$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/beizi/fusion/work/d/b$6;-><init>(Lcom/beizi/fusion/work/d/b;II)V

    invoke-virtual {p3, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/tool/ad$a;)V

    .line 53
    iget-object p1, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    if-eqz p1, :cond_8

    .line 54
    iget-object p2, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    iget-object p3, p0, Lcom/beizi/fusion/work/d/b;->A:Ljava/lang/String;

    invoke-virtual {p2, p1, p3}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;Ljava/lang/String;)V

    .line 55
    :cond_8
    iget-object p1, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    iget-object p2, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Lcom/beizi/fusion/tool/ad;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_1
    return-void
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 58
    :goto_0
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRegulatoryAngle()I

    move-result v0

    .line 59
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    if-eqz v1, :cond_1

    .line 60
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/tool/ad;->c(I)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 62
    iput-boolean v1, p0, Lcom/beizi/fusion/work/d/b;->B:Z

    .line 63
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    return-void

    .line 64
    :cond_2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/d/b;->b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object p1, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aQ()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object p1, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;)V

    return-void

    .line 68
    :cond_4
    iput-boolean v1, p0, Lcom/beizi/fusion/work/d/b;->B:Z

    .line 69
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/tool/ad;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;D)V
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(D)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;I)V
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/work/a;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;III)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/beizi/fusion/work/d/b;->a(III)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Ljava/lang/String;I)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Ljava/util/List;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/d/b;->b(Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;[Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/beizi/fusion/work/d/b;->a([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;[Ljava/lang/String;I)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/work/d/b;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .locals 8

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aU()V

    .line 135
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->Q:Z

    .line 138
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    .line 139
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_2

    .line 140
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setNativeRuleUuid(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 142
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 143
    aget-object v3, p1, v3

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    const/4 v0, 0x3

    aget-object p1, p1, v0

    const/4 v6, 0x0

    new-instance v7, Lcom/beizi/fusion/work/d/b$4;

    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/d/b$4;-><init>(Lcom/beizi/fusion/work/d/b;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    invoke-interface/range {v0 .. v7}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .locals 8

    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aU()V

    .line 102
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->Q:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 104
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->Q:Z

    .line 105
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    .line 106
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v1, :cond_2

    .line 107
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/EventBean;->setNativeRuleUuid(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 109
    :cond_2
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 110
    aget-object v3, p1, v3

    aget-object v4, p1, v0

    const/4 v0, 0x2

    aget-object v5, p1, v0

    const/4 v0, 0x3

    aget-object p1, p1, v0

    new-instance v7, Lcom/beizi/fusion/work/d/b$9;

    invoke-direct {v7, p0}, Lcom/beizi/fusion/work/d/b$9;-><init>(Lcom/beizi/fusion/work/d/b;)V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p1

    move v6, p2

    invoke-interface/range {v0 .. v7}, Lcom/beizi/ad/e;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/beizi/ad/internal/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/beizi/fusion/work/d/b;->M:Z

    return p1
.end method

.method private a(Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const-string v4, ""

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    const/4 v7, 0x4

    :try_start_0
    new-array v7, v7, [Ljava/lang/String;

    .line 119
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v7, v9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v10, p5

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x2

    aput-object v8, v7, v10

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v11, p6

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x3

    aput-object v8, v7, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_1
    new-array v6, v10, [I

    .line 120
    invoke-virtual {v0, v6}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v0

    float-to-double v12, v2

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double v12, v12, v14

    int-to-double v5, v6

    div-double/2addr v12, v5

    double-to-int v5, v12

    float-to-double v12, v3

    mul-double v12, v12, v14

    int-to-double v14, v0

    div-double/2addr v12, v14

    double-to-int v0, v12

    .line 123
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 124
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v6

    new-array v8, v10, [I

    .line 125
    invoke-virtual {v1, v8}, Landroid/view/View;->getLocationOnScreen([I)V

    mul-int v3, v3, v5

    .line 126
    div-int/lit8 v3, v3, 0x64

    mul-int v6, v6, v0

    .line 127
    div-int/lit8 v6, v6, 0x64

    const/4 v0, 0x0

    aget v1, v8, v0

    add-int/2addr v1, v3

    aget v0, v8, v9

    add-int/2addr v0, v6

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    aput-object v3, v7, v2

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v9

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 132
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v6, v7

    goto :goto_1

    :cond_1
    :goto_0
    return-object v7

    :catch_2
    move-exception v0

    .line 133
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v6

    :goto_2
    return-object v7
.end method

.method static synthetic a(Lcom/beizi/fusion/work/d/b;Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p6}, Lcom/beizi/fusion/work/d/b;->a(Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private aO()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/beizi/fusion/work/d/b;->Y:J

    .line 6
    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/beizi/fusion/tool/au;->k(Landroid/content/Context;)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 14
    .line 15
    const/high16 v2, 0x42200000    # 40.0f

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iput v2, p0, Lcom/beizi/fusion/work/d/b;->E:I

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput v2, p0, Lcom/beizi/fusion/work/d/b;->F:I

    .line 36
    .line 37
    iget v3, p0, Lcom/beizi/fusion/work/d/b;->E:I

    .line 38
    .line 39
    int-to-float v3, v3

    .line 40
    const/high16 v4, 0x40800000    # 4.0f

    .line 41
    .line 42
    div-float/2addr v0, v4

    .line 43
    cmpg-float v0, v3, v0

    .line 44
    .line 45
    if-ltz v0, :cond_5

    .line 46
    .line 47
    if-ge v2, v1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v0, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    .line 51
    .line 52
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->M:Z

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 59
    .line 60
    const-string v1, "1"

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setIsCacheAd(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/b;->N:J

    .line 66
    .line 67
    const-wide/16 v2, 0x0

    .line 68
    .line 69
    cmp-long v4, v0, v2

    .line 70
    .line 71
    if-lez v4, :cond_1

    .line 72
    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    iget-wide v2, p0, Lcom/beizi/fusion/work/d/b;->N:J

    .line 78
    .line 79
    sub-long/2addr v0, v2

    .line 80
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 81
    .line 82
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v2, v0}, Lcom/beizi/fusion/events/EventBean;->setCacheTime(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 90
    .line 91
    .line 92
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 93
    .line 94
    if-eqz v0, :cond_3

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    const/4 v1, 0x2

    .line 101
    if-eq v0, v1, :cond_3

    .line 102
    .line 103
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/beizi/fusion/work/d/b;->f()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/a;->t:Z

    .line 113
    .line 114
    if-nez v0, :cond_4

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/a;->t:Z

    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->B()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->C()V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ac()V

    .line 126
    .line 127
    .line 128
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aT()V

    .line 129
    .line 130
    .line 131
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aV()V

    .line 132
    .line 133
    .line 134
    :cond_5
    :goto_0
    return-void
.end method

.method private aP()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->Q:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->ab:Z

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aU()V

    .line 10
    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->C:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getCallBackStrategyUuid()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setCallBackStrategyUuid(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->E()V

    .line 33
    .line 34
    .line 35
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->C:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->D:Z

    .line 40
    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v1, 0x2

    .line 53
    if-eq v0, v1, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/beizi/fusion/work/d/b;->f()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->d(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->D()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ad()V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Lcom/beizi/fusion/work/d/b;->G:I

    .line 71
    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    return-void

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->H:Landroid/view/View;

    .line 80
    .line 81
    if-nez v1, :cond_4

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->c()V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->H:Landroid/view/View;

    .line 88
    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-void
.end method

.method private aQ()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v1}, Lcom/beizi/fusion/tool/au;->p(Landroid/content/Context;)Ljava/lang/Long;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    sub-long/2addr v3, v1

    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getUserProtectTime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    cmp-long v5, v3, v1

    .line 24
    .line 25
    if-gez v5, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    .line 32
    .line 33
    :cond_0
    :goto_0
    return v0
.end method

.method private aR()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->x:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;->getRenderRate()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method private aS()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/fusion/work/d/b;->K:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {v0}, Lcom/beizi/ad/e;->m()Lcom/beizi/ad/lance/ApkBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/beizi/ad/internal/c/d;->a(Landroid/content/Context;Lcom/beizi/ad/e;)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_3

    .line 27
    .line 28
    return-void

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    .line 37
    mul-int/lit8 v1, v1, 0x2

    .line 38
    .line 39
    div-int/lit8 v1, v1, 0x3

    .line 40
    .line 41
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 42
    .line 43
    const/4 v3, -0x2

    .line 44
    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 53
    .line 54
    const/16 v4, 0x33

    .line 55
    .line 56
    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method

.method private aT()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->R:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 30
    .line 31
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, -0x1

    .line 36
    if-gtz v0, :cond_1

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    :cond_1
    if-gtz v1, :cond_2

    .line 40
    .line 41
    const/4 v1, -0x1

    .line 42
    :cond_2
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 43
    .line 44
    invoke-direct {v2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->ac:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    new-instance v1, Lcom/beizi/fusion/work/d/b$10;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/beizi/fusion/work/d/b$10;-><init>(Lcom/beizi/fusion/work/d/b;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_0
    return-void

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 95
    .line 96
    .line 97
    :goto_1
    return-void
.end method

.method private aU()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->am:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/beizi/fusion/work/d/b;->V:Landroid/widget/FrameLayout;

    .line 31
    .line 32
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->an:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 37
    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->an:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->af:Landroid/view/ViewGroup;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 54
    .line 55
    if-eqz v2, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :cond_3
    :goto_0
    return-void
.end method

.method private aV()V
    .locals 14

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_10

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_10

    .line 8
    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_5

    .line 14
    .line 15
    :cond_0
    iget-boolean v1, p0, Lcom/beizi/fusion/work/d/b;->ad:Z

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/beizi/fusion/work/d/b;->ae:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getNativeOptimize()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_2

    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeBean;->getClickArea()Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_3

    .line 36
    .line 37
    return-void

    .line 38
    :cond_3
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getRandomNum()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Lcom/beizi/fusion/tool/ai;->a(I)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_4

    .line 47
    .line 48
    return-void

    .line 49
    :cond_4
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getReference()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getWidth()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getHeight()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getHorizontalSpace()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$NativeOptimizeClickAreaBean;->getVerticalSpace()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v5, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 70
    .line 71
    invoke-virtual {v5}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    if-nez v5, :cond_5

    .line 76
    .line 77
    return-void

    .line 78
    :cond_5
    const v6, 0x1020002

    .line 79
    .line 80
    .line 81
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    check-cast v5, Landroid/view/ViewGroup;

    .line 86
    .line 87
    iput-object v5, p0, Lcom/beizi/fusion/work/d/b;->af:Landroid/view/ViewGroup;

    .line 88
    .line 89
    if-nez v5, :cond_6

    .line 90
    .line 91
    return-void

    .line 92
    :cond_6
    iget-object v5, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 93
    .line 94
    invoke-static {v5}, Lcom/beizi/fusion/tool/au;->m(Landroid/content/Context;)I

    .line 95
    .line 96
    .line 97
    move-result v5

    .line 98
    iget-object v6, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 99
    .line 100
    invoke-static {v6}, Lcom/beizi/fusion/tool/au;->n(Landroid/content/Context;)I

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    iget-object v7, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 105
    .line 106
    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v7

    .line 110
    iget-object v8, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 111
    .line 112
    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result v8

    .line 116
    const/4 v9, 0x2

    .line 117
    new-array v9, v9, [I

    .line 118
    .line 119
    iget-object v10, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 120
    .line 121
    invoke-virtual {v10, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 122
    .line 123
    .line 124
    const/4 v10, 0x0

    .line 125
    aget v11, v9, v10

    .line 126
    .line 127
    const/4 v12, 0x1

    .line 128
    aget v9, v9, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .line 130
    const/4 v13, -0x1

    .line 131
    if-nez v1, :cond_7

    .line 132
    .line 133
    move v5, v7

    .line 134
    move v6, v8

    .line 135
    goto :goto_0

    .line 136
    :cond_7
    if-ne v1, v12, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    const/4 v5, -0x1

    .line 140
    const/4 v6, -0x1

    .line 141
    :goto_0
    :try_start_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 145
    const-string v12, "%"

    .line 146
    .line 147
    if-nez v1, :cond_a

    .line 148
    .line 149
    :try_start_2
    invoke-virtual {v2, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-eqz v1, :cond_9

    .line 154
    .line 155
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v2, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    mul-int v1, v1, v5

    .line 168
    .line 169
    div-int/lit8 v5, v1, 0x64

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_9
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    move-result v5

    .line 176
    :cond_a
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 177
    .line 178
    .line 179
    move-result v1

    .line 180
    if-nez v1, :cond_c

    .line 181
    .line 182
    invoke-virtual {v3, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    if-eqz v1, :cond_b

    .line 187
    .line 188
    invoke-virtual {v3, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-virtual {v3, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    mul-int v1, v1, v6

    .line 201
    .line 202
    div-int/lit8 v1, v1, 0x64

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    :goto_2
    move v6, v1

    .line 210
    goto :goto_3

    .line 211
    :catch_0
    move-exception v1

    .line 212
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 213
    .line 214
    .line 215
    :cond_c
    :goto_3
    if-gez v5, :cond_d

    .line 216
    .line 217
    const/4 v5, -0x1

    .line 218
    :cond_d
    if-gez v6, :cond_e

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_e
    move v13, v6

    .line 222
    :goto_4
    new-instance v1, Landroid/widget/FrameLayout;

    .line 223
    .line 224
    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 225
    .line 226
    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 227
    .line 228
    .line 229
    iput-object v1, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 230
    .line 231
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 232
    .line 233
    invoke-direct {v1, v5, v13}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 237
    .line 238
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    .line 240
    .line 241
    invoke-direct {p0, v4, v5, v7, v11}, Lcom/beizi/fusion/work/d/b;->a(Ljava/lang/String;III)I

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    invoke-direct {p0, v0, v13, v8, v9}, Lcom/beizi/fusion/work/d/b;->b(Ljava/lang/String;III)I

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 250
    .line 251
    const/high16 v3, 0x41c80000    # 25.0f

    .line 252
    .line 253
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    if-le v0, v2, :cond_f

    .line 258
    .line 259
    sub-int/2addr v0, v2

    .line 260
    :cond_f
    iget-object v2, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 261
    .line 262
    int-to-float v1, v1

    .line 263
    invoke-virtual {v2, v1}, Landroid/view/View;->setX(F)V

    .line 264
    .line 265
    .line 266
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 267
    .line 268
    int-to-float v0, v0

    .line 269
    invoke-virtual {v1, v0}, Landroid/view/View;->setY(F)V

    .line 270
    .line 271
    .line 272
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 273
    .line 274
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->ac:Ljava/lang/String;

    .line 275
    .line 276
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->af:Landroid/view/ViewGroup;

    .line 284
    .line 285
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 288
    .line 289
    .line 290
    const/4 v0, 0x4

    .line 291
    new-array v0, v0, [F

    .line 292
    .line 293
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->ag:Landroid/widget/FrameLayout;

    .line 294
    .line 295
    new-instance v2, Lcom/beizi/fusion/work/d/b$12;

    .line 296
    .line 297
    invoke-direct {v2, p0, v0}, Lcom/beizi/fusion/work/d/b$12;-><init>(Lcom/beizi/fusion/work/d/b;[F)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 301
    .line 302
    .line 303
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 304
    .line 305
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->an:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 310
    .line 311
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 312
    .line 313
    .line 314
    goto :goto_6

    .line 315
    :cond_10
    :goto_5
    return-void

    .line 316
    :catchall_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 318
    .line 319
    .line 320
    :goto_6
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/work/d/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/d/b;->E:I

    return p1
.end method

.method private b(Ljava/lang/String;III)I
    .locals 2

    .line 44
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p4

    :cond_0
    const-string v0, "top"

    .line 45
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    const-string v0, "center"

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-le p2, p3, :cond_2

    sub-int/2addr p2, p3

    .line 47
    div-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p4, p2

    goto :goto_2

    :cond_2
    sub-int/2addr p3, p2

    .line 48
    div-int/lit8 p3, p3, 0x2

    :goto_1
    add-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const-string v0, "bottom"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    if-le p2, p3, :cond_4

    sub-int/2addr p2, p3

    goto :goto_0

    :cond_4
    sub-int/2addr p3, p2

    goto :goto_1

    :cond_5
    const/4 p4, 0x0

    :goto_2
    if-gez p4, :cond_6

    const/4 p4, 0x0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_3
    return p4
.end method

.method static synthetic b(Lcom/beizi/fusion/work/d/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/work/d/b;->P:J

    return-wide p1
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 53
    :cond_1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->ai:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 54
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    return-void

    .line 56
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    goto :goto_0

    .line 57
    :cond_4
    new-instance v1, Lcom/beizi/fusion/work/d/b$3;

    invoke-direct {v1, p0, v0}, Lcom/beizi/fusion/work/d/b$3;-><init>(Lcom/beizi/fusion/work/d/b;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)Z
    .locals 6

    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->A:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    .line 17
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/beizi/fusion/work/d/b$7;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/work/d/b$7;-><init>(Lcom/beizi/fusion/work/d/b;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$ShakeViewBean;)V

    iget-object p1, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 18
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;->getCoolTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 19
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/beizi/fusion/tool/ap;->a()Lcom/beizi/fusion/tool/ap;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->A:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/tool/ap;->a(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->M:Z

    return p0
.end method

.method static synthetic b(Lcom/beizi/fusion/work/d/b;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/work/d/b;->Q:Z

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/d/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/d/b;->F:I

    return p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/d/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/beizi/fusion/work/d/b;->ah:J

    return-wide p1
.end method

.method static synthetic c(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic c(Lcom/beizi/fusion/work/d/b;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/d/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/beizi/fusion/work/d/b;->U:I

    return p1
.end method

.method static synthetic d(Lcom/beizi/fusion/work/d/b;)J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/b;->N:J

    return-wide v0
.end method

.method static synthetic d(Lcom/beizi/fusion/work/d/b;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/beizi/fusion/work/d/b;->B:Z

    return p1
.end method

.method static synthetic e(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/events/EventBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    return-object p0
.end method

.method static synthetic e(Lcom/beizi/fusion/work/d/b;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/beizi/fusion/work/d/b;->W:Z

    return p1
.end method

.method static synthetic f(Lcom/beizi/fusion/work/d/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    return-void
.end method

.method static synthetic g(Lcom/beizi/fusion/work/d/b;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->x()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h(Lcom/beizi/fusion/work/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aS()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/beizi/fusion/work/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/d/b;->E:I

    return p0
.end method

.method static synthetic j(Lcom/beizi/fusion/work/d/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/work/d/b;->F:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic k(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->ad:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->ae:Z

    return p0
.end method

.method static synthetic m(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/ad/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    return-object p0
.end method

.method static synthetic n(Lcom/beizi/fusion/work/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aP()V

    return-void
.end method

.method static synthetic o(Lcom/beizi/fusion/work/d/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aO()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->aa:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->B:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic r(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->y:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean$CoolShakeViewBean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/beizi/fusion/work/d/b;)Lcom/beizi/fusion/tool/ad;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/beizi/fusion/work/d/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->A:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lcom/beizi/fusion/work/d/b;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/work/d/b;->X:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->W:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic w(Lcom/beizi/fusion/work/d/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/beizi/fusion/work/d/b;->Q:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lcom/beizi/fusion/work/d/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/b;->Y:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic y(Lcom/beizi/fusion/work/d/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/b;->S:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic z(Lcom/beizi/fusion/work/d/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/b;->P:J

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 100
    :cond_0
    new-instance v0, Lcom/beizi/fusion/work/d/b$8;

    invoke-direct {v0, p0}, Lcom/beizi/fusion/work/d/b$8;-><init>(Lcom/beizi/fusion/work/d/b;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 16
    new-instance v1, Lcom/beizi/fusion/work/d/b$5;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/work/d/b$5;-><init>(Lcom/beizi/fusion/work/d/b;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 5

    const-string v0, "auctionExt"

    const-string v1, "highestLossPrice"

    const-string v2, "adnId"

    const-string v3, "winPrice"

    .line 71
    :try_start_0
    iget-object v4, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    if-nez v4, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-virtual {v4, p1}, Lcom/beizi/ad/v2/a/a;->a(Ljava/util/Map;)V

    .line 73
    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 75
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 76
    check-cast v3, Ljava/lang/String;

    .line 77
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 78
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v4, v3}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 79
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 80
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 81
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 82
    check-cast v2, Ljava/lang/String;

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 84
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 85
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 87
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 88
    check-cast v1, Ljava/lang/String;

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 90
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setHighestLossPrice(Ljava/lang/String;)V

    .line 91
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 92
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 93
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setSecondPrice(Ljava/lang/String;)V

    .line 97
    :cond_4
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 98
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->M()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public aA()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/beizi/ad/e;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, 0x1

    .line 29
    if-lt v2, v3, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/String;

    .line 37
    .line 38
    move-object v0, v1

    .line 39
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->aj:[Ljava/lang/String;

    .line 46
    .line 47
    iget v2, p0, Lcom/beizi/fusion/work/d/b;->al:I

    .line 48
    .line 49
    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 53
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-object v0
.end method

.method public aB()Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    invoke-interface {v1}, Lcom/beizi/ad/e;->c()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/beizi/ad/e;->c()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 29
    .line 30
    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    const/4 v3, 0x2

    .line 41
    if-lt v2, v3, :cond_0

    .line 42
    .line 43
    const/4 v2, 0x1

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    .line 50
    move-object v0, v1

    .line 51
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->ak:[Ljava/lang/String;

    .line 58
    .line 59
    iget v2, p0, Lcom/beizi/fusion/work/d/b;->al:I

    .line 60
    .line 61
    aget-object v0, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-object v0
.end method

.method public aC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/e;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/beizi/ad/e;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public aD()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/e;->b()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/beizi/ad/e;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public aE()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/e;->h()Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 17
    .line 18
    invoke-interface {v3}, Lcom/beizi/ad/e;->h()Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lez v3, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    :goto_1
    and-int/2addr v0, v1

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/beizi/ad/e;->h()Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_2
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method public aF()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aG()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/beizi/ad/e;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/beizi/ad/e;->i()Ljava/util/ArrayList;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, 0x3

    .line 28
    if-lt v2, v3, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/lang/String;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-string v0, "\u67e5\u770b\u8be6\u60c5"

    .line 46
    .line 47
    :cond_2
    return-object v0
.end method

.method public aH()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aI()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method public aK()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/beizi/fusion/work/d/b;->J:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    new-instance v0, Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 19
    .line 20
    const/16 v2, 0x11

    .line 21
    .line 22
    const/4 v3, -0x2

    .line 23
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 30
    .line 31
    invoke-interface {v1}, Lcom/beizi/ad/e;->k()Lcom/beizi/ad/internal/d/a$a;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v4, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 36
    .line 37
    invoke-static {v4, v1}, Lcom/beizi/ad/internal/e/t;->a(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 46
    .line 47
    const/high16 v6, 0x41880000    # 17.0f

    .line 48
    .line 49
    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 56
    .line 57
    invoke-interface {v1}, Lcom/beizi/ad/e;->j()Lcom/beizi/ad/internal/d/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v5, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 62
    .line 63
    invoke-static {v5, v1}, Lcom/beizi/ad/internal/e/t;->b(Landroid/content/Context;Lcom/beizi/ad/internal/d/a$a;)Landroid/widget/FrameLayout;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    invoke-direct {v5, v3, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    .line 84
    const/4 v6, 0x5

    .line 85
    invoke-virtual {v5, v6, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 86
    .line 87
    .line 88
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 89
    .line 90
    invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 94
    .line 95
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .line 97
    const/16 v5, 0x55

    .line 98
    .line 99
    invoke-direct {v2, v3, v3, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 112
    .line 113
    const/high16 v3, 0x40c00000    # 6.0f

    .line 114
    .line 115
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    invoke-virtual {v1, v4, v4, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    :goto_0
    return-void
.end method

.method public aL()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/beizi/ad/e;->k()Lcom/beizi/ad/internal/d/a$a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Lcom/beizi/ad/internal/d/a$a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    return-object v0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    .line 24
    .line 25
    return-object v1
.end method

.method public aM()Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    .line 3
    .line 4
    invoke-interface {v1}, Lcom/beizi/ad/e;->m()Lcom/beizi/ad/lance/ApkBean;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    new-instance v2, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getApkName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppName(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppVersion()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppVersion(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppDeveloper()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppDeveloper(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsUrl()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-nez v4, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppPermission(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPermissionsDesc()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-nez v4, :cond_2

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppPermission(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPrivacyUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    if-nez v3, :cond_3

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppPrivacyUrl()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-virtual {v2, v3}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppPrivacy(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :cond_3
    invoke-virtual {v1}, Lcom/beizi/ad/lance/ApkBean;->getAppintro()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2, v1}, Lcom/beizi/fusion/model/UnifiedAdDownloadAppInfo;->setAppIntro(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-object v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->h()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ax()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->m()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public ay()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->q()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public az()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    new-instance v0, Lcom/beizi/ad/v2/d/c;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 15
    .line 16
    new-instance v3, Lcom/beizi/fusion/work/d/b$1;

    .line 17
    .line 18
    invoke-direct {v3, p0}, Lcom/beizi/fusion/work/d/b$1;-><init>(Lcom/beizi/fusion/work/d/b;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/beizi/ad/v2/d/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/ad/d;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Z)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventBean;->clone()Lcom/beizi/fusion/events/EventBean;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/events/EventBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 44
    .line 45
    .line 46
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 47
    .line 48
    iget-wide v1, p0, Lcom/beizi/fusion/work/d/b;->O:J

    .line 49
    .line 50
    long-to-int v2, v1

    .line 51
    invoke-virtual {v0, v2}, Lcom/beizi/ad/v2/a/a;->a(I)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 55
    .line 56
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "S2S"

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    .line 73
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 74
    .line 75
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->c(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 83
    .line 84
    if-eqz v0, :cond_0

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->B()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_0

    .line 95
    .line 96
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->b(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    iget-object v1, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->C()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v1, v0}, Lcom/beizi/ad/v2/a/a;->c(Ljava/util/Map;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 115
    .line 116
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->D()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v0, v1}, Lcom/beizi/ad/v2/a/a;->d(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->c()V

    .line 128
    .line 129
    .line 130
    return-void
.end method

.method public b()V
    .locals 6

    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->t()V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/d/a;->n:Landroid/content/Context;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/beizi/fusion/c/n;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->u()V

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {p0}, Lcom/beizi/fusion/work/d/b;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":requestAd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/beizi/fusion/work/d/a;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 10
    iget-wide v0, p0, Lcom/beizi/fusion/work/d/a;->o:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_0

    .line 11
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    invoke-virtual {v2, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->u()I

    move-result v0

    if-ge v0, v4, :cond_1

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->t()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/work/d/a;->k()V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4

    const-string v0, "lossReason"

    const-string v1, "adnId"

    const-string v2, "winPrice"

    .line 21
    :try_start_0
    iget-object v3, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    if-nez v3, :cond_0

    return-void

    .line 22
    :cond_0
    invoke-virtual {v3, p1}, Lcom/beizi/ad/v2/a/a;->b(Ljava/util/Map;)V

    .line 23
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 24
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 25
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 28
    iget-object v3, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v3, v2}, Lcom/beizi/fusion/events/EventBean;->setWinPrice(Ljava/lang/String;)V

    .line 29
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 31
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 32
    check-cast v1, Ljava/lang/String;

    .line 33
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 34
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v2, v1}, Lcom/beizi/fusion/events/EventBean;->setAdnId(Ljava/lang/String;)V

    .line 35
    :cond_2
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 37
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 38
    check-cast p1, Ljava/lang/String;

    .line 39
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setLossReason(Ljava/lang/String;)V

    .line 41
    :cond_3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 42
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BEIZI"

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public l()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->w:Lcom/beizi/ad/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/beizi/ad/e;->g()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/beizi/ad/v2/a/a;->f()V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->c()V

    .line 8
    :cond_2
    invoke-direct {p0}, Lcom/beizi/fusion/work/d/b;->aU()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 2
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/tool/ad;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 2
    :try_start_0
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->z:Lcom/beizi/fusion/tool/ad;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ad;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected z()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/d/b;->v:Lcom/beizi/ad/v2/d/c;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ag()V

    :cond_0
    return-void
.end method
