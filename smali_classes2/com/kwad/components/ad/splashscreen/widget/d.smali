.class public final Lcom/kwad/components/ad/splashscreen/widget/d;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "SourceFile"


# instance fields
.field private MA:Landroid/graphics/Paint;

.field private MC:I

.field private MD:I

.field private ME:Landroid/animation/ValueAnimator;

.field private final MF:F

.field private final MG:F

.field private MH:F

.field private MI:F

.field private MJ:I

.field private Mk:Landroid/graphics/Bitmap;

.field private Ml:Landroid/graphics/Bitmap;

.field private Mm:Landroid/graphics/Bitmap;

.field private Mn:Landroid/graphics/Bitmap;

.field private Mo:Landroid/graphics/Bitmap;

.field private Mp:Landroid/graphics/Bitmap;

.field private Mq:I

.field private Mr:Landroid/graphics/RectF;

.field private Ms:Landroid/graphics/Paint;

.field private Mt:Landroid/graphics/Paint;

.field private Mu:Landroid/graphics/PorterDuffXfermode;

.field private final Mv:I

.field private final Mw:I

.field private Mx:F

.field private My:F

.field private Mz:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x40c00000    # 6.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MF:F

    .line 7
    .line 8
    const/high16 v0, 0x41300000    # 11.0f

    .line 9
    .line 10
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MG:F

    .line 11
    .line 12
    iput-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    const/high16 v0, 0x424c0000    # 51.0f

    .line 15
    .line 16
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 21
    .line 22
    const/high16 v0, 0x42740000    # 61.0f

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 29
    .line 30
    iput p2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/kwad/components/ad/splashscreen/widget/d;->init()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method static synthetic a(Lcom/kwad/components/ad/splashscreen/widget/d;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MH:F

    return p0
.end method

.method static synthetic a(Lcom/kwad/components/ad/splashscreen/widget/d;F)F
    .locals 0

    .line 2
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MH:F

    return p1
.end method

.method static synthetic b(Lcom/kwad/components/ad/splashscreen/widget/d;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/kwad/components/ad/splashscreen/widget/d;->e(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private e(F)V
    .locals 5

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    .line 3
    cmpg-float v1, p1, v0

    .line 4
    .line 5
    if-gtz v1, :cond_3

    .line 6
    .line 7
    div-float/2addr p1, v0

    .line 8
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 9
    .line 10
    const/high16 v1, 0x3f800000    # 1.0f

    .line 11
    .line 12
    const/high16 v2, 0x41f00000    # 30.0f

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-eq v0, v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 24
    .line 25
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 26
    .line 27
    int-to-float v1, v1

    .line 28
    mul-float v1, v1, p1

    .line 29
    .line 30
    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 31
    .line 32
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 33
    .line 34
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 35
    .line 36
    add-float/2addr v1, v4

    .line 37
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 38
    .line 39
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 40
    .line 41
    add-float/2addr v0, v4

    .line 42
    invoke-virtual {v3, v1, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 43
    .line 44
    .line 45
    const/high16 v0, 0x43a50000    # 330.0f

    .line 46
    .line 47
    mul-float p1, p1, v2

    .line 48
    .line 49
    add-float/2addr p1, v0

    .line 50
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 54
    .line 55
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 56
    .line 57
    int-to-float v3, v3

    .line 58
    sub-float/2addr v1, p1

    .line 59
    mul-float v3, v3, v1

    .line 60
    .line 61
    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 62
    .line 63
    iget-object p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 64
    .line 65
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 66
    .line 67
    add-float/2addr v3, v4

    .line 68
    iget v0, v0, Landroid/graphics/RectF;->top:F

    .line 69
    .line 70
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 71
    .line 72
    add-float/2addr v0, v4

    .line 73
    invoke-virtual {p1, v3, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 74
    .line 75
    .line 76
    mul-float v1, v1, v2

    .line 77
    .line 78
    iput v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 82
    .line 83
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 84
    .line 85
    int-to-float v3, v3

    .line 86
    sub-float/2addr v1, p1

    .line 87
    mul-float v3, v3, v1

    .line 88
    .line 89
    iput v3, v0, Landroid/graphics/RectF;->top:F

    .line 90
    .line 91
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 92
    .line 93
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 94
    .line 95
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 96
    .line 97
    add-float/2addr v0, v4

    .line 98
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 99
    .line 100
    add-float/2addr v3, v4

    .line 101
    invoke-virtual {v1, v0, v3}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 102
    .line 103
    .line 104
    const/high16 v0, 0x43910000    # 290.0f

    .line 105
    .line 106
    mul-float p1, p1, v2

    .line 107
    .line 108
    add-float/2addr p1, v0

    .line 109
    iput p1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 110
    .line 111
    :cond_3
    :goto_0
    return-void
.end method

.method private init()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mk:Landroid/graphics/Bitmap;

    .line 14
    .line 15
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_lt:I

    .line 22
    .line 23
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ml:Landroid/graphics/Bitmap;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_lb:I

    .line 36
    .line 37
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mm:Landroid/graphics/Bitmap;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_rt:I

    .line 50
    .line 51
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mn:Landroid/graphics/Bitmap;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_hand_rb:I

    .line 64
    .line 65
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mo:Landroid/graphics/Bitmap;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sget v1, Lcom/kwad/sdk/R$drawable;->ksad_splash_side_bg:I

    .line 78
    .line 79
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    if-eq v0, v9, :cond_1

    .line 90
    .line 91
    if-eq v0, v1, :cond_0

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    .line 95
    .line 96
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 97
    .line 98
    .line 99
    const/high16 v0, 0x42b40000    # 90.0f

    .line 100
    .line 101
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 102
    .line 103
    .line 104
    const/4 v3, 0x0

    .line 105
    const/4 v4, 0x0

    .line 106
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 111
    .line 112
    .line 113
    move-result v6

    .line 114
    const/4 v8, 0x1

    .line 115
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_1
    new-instance v7, Landroid/graphics/Matrix;

    .line 123
    .line 124
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 125
    .line 126
    .line 127
    const/high16 v0, 0x43870000    # 270.0f

    .line 128
    .line 129
    invoke-virtual {v7, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 130
    .line 131
    .line 132
    const/4 v3, 0x0

    .line 133
    const/4 v4, 0x0

    .line 134
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    const/4 v8, 0x1

    .line 143
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_2
    iput-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 151
    .line 152
    :goto_0
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 153
    .line 154
    const/high16 v2, 0x41200000    # 10.0f

    .line 155
    .line 156
    invoke-static {v0, v2}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mq:I

    .line 161
    .line 162
    new-instance v0, Landroid/graphics/Paint;

    .line 163
    .line 164
    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 168
    .line 169
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 170
    .line 171
    if-eqz v0, :cond_5

    .line 172
    .line 173
    const v2, 0x3db851ec    # 0.09f

    .line 174
    .line 175
    .line 176
    if-eq v0, v9, :cond_4

    .line 177
    .line 178
    if-eq v0, v1, :cond_3

    .line 179
    .line 180
    goto/16 :goto_1

    .line 181
    .line 182
    :cond_3
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 183
    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgw:I

    .line 189
    .line 190
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    float-to-int v0, v0

    .line 195
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 196
    .line 197
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgh:I

    .line 204
    .line 205
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    float-to-int v0, v0

    .line 210
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 211
    .line 212
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 213
    .line 214
    int-to-float v0, v0

    .line 215
    mul-float v0, v0, v2

    .line 216
    .line 217
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 218
    .line 219
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 220
    .line 221
    neg-int v0, v0

    .line 222
    int-to-float v0, v0

    .line 223
    const/high16 v1, 0x3f000000    # 0.5f

    .line 224
    .line 225
    mul-float v0, v0, v1

    .line 226
    .line 227
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 231
    .line 232
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgw:I

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    float-to-int v0, v0

    .line 243
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 244
    .line 245
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 246
    .line 247
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgh:I

    .line 252
    .line 253
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    float-to-int v0, v0

    .line 258
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 259
    .line 260
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 261
    .line 262
    int-to-float v0, v0

    .line 263
    mul-float v0, v0, v2

    .line 264
    .line 265
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 266
    .line 267
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 268
    .line 269
    neg-int v0, v0

    .line 270
    int-to-float v0, v0

    .line 271
    const v1, 0x3e4ccccd    # 0.2f

    .line 272
    .line 273
    .line 274
    mul-float v0, v0, v1

    .line 275
    .line 276
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :cond_5
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 280
    .line 281
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgh:I

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    float-to-int v0, v0

    .line 292
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 293
    .line 294
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->mContext:Landroid/content/Context;

    .line 295
    .line 296
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    sget v1, Lcom/kwad/sdk/R$dimen;->ksad_splash_hand_bgw:I

    .line 301
    .line 302
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    float-to-int v0, v0

    .line 307
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 308
    .line 309
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 310
    .line 311
    neg-int v1, v1

    .line 312
    int-to-float v1, v1

    .line 313
    const v2, 0x3e6147ae    # 0.22f

    .line 314
    .line 315
    .line 316
    mul-float v1, v1, v2

    .line 317
    .line 318
    iput v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mx:F

    .line 319
    .line 320
    int-to-float v0, v0

    .line 321
    const v1, 0x3da3d70a    # 0.08f

    .line 322
    .line 323
    .line 324
    mul-float v0, v0, v1

    .line 325
    .line 326
    iput v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->My:F

    .line 327
    .line 328
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    .line 329
    .line 330
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 331
    .line 332
    int-to-float v1, v1

    .line 333
    iget v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 334
    .line 335
    int-to-float v2, v2

    .line 336
    const/4 v3, 0x0

    .line 337
    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 338
    .line 339
    .line 340
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 341
    .line 342
    new-instance v0, Landroid/graphics/Paint;

    .line 343
    .line 344
    const/4 v1, 0x3

    .line 345
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 346
    .line 347
    .line 348
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 349
    .line 350
    new-instance v0, Landroid/graphics/Paint;

    .line 351
    .line 352
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 353
    .line 354
    .line 355
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 356
    .line 357
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setDither(Z)V

    .line 358
    .line 359
    .line 360
    new-instance v0, Landroid/graphics/RectF;

    .line 361
    .line 362
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 363
    .line 364
    iget v2, v2, Landroid/graphics/RectF;->right:F

    .line 365
    .line 366
    iget v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 367
    .line 368
    int-to-float v4, v4

    .line 369
    sub-float v4, v2, v4

    .line 370
    .line 371
    iget v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 372
    .line 373
    int-to-float v5, v5

    .line 374
    invoke-direct {v0, v4, v3, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 375
    .line 376
    .line 377
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 378
    .line 379
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 380
    .line 381
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    .line 382
    .line 383
    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 384
    .line 385
    .line 386
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mu:Landroid/graphics/PorterDuffXfermode;

    .line 387
    .line 388
    new-array v0, v1, [F

    .line 389
    .line 390
    fill-array-data v0, :array_0

    .line 391
    .line 392
    .line 393
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    iput-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 398
    .line 399
    const-wide/16 v1, 0x44c

    .line 400
    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 402
    .line 403
    .line 404
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 405
    .line 406
    new-instance v1, Lcom/kwad/components/ad/splashscreen/widget/d$1;

    .line 407
    .line 408
    invoke-direct {v1, p0}, Lcom/kwad/components/ad/splashscreen/widget/d$1;-><init>(Lcom/kwad/components/ad/splashscreen/widget/d;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 412
    .line 413
    .line 414
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 415
    .line 416
    const/4 v1, -0x1

    .line 417
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 418
    .line 419
    .line 420
    return-void

    .line 421
    :array_0
    .array-data 4
        0x0
        0x40c00000    # 6.0f
        0x41300000    # 11.0f
    .end array-data
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/kwad/components/ad/splashscreen/widget/d;->getIntrinsicWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    div-int/lit8 v0, v0, 0x2

    .line 17
    .line 18
    int-to-float v0, v0

    .line 19
    invoke-virtual {p0}, Lcom/kwad/components/ad/splashscreen/widget/d;->getIntrinsicHeight()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 24
    .line 25
    sub-int/2addr v1, v2

    .line 26
    div-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    int-to-float v1, v1

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 30
    .line 31
    .line 32
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MH:F

    .line 33
    .line 34
    const/high16 v1, 0x437f0000    # 255.0f

    .line 35
    .line 36
    const/high16 v2, 0x40c00000    # 6.0f

    .line 37
    .line 38
    cmpg-float v3, v0, v2

    .line 39
    .line 40
    if-gtz v3, :cond_1

    .line 41
    .line 42
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 43
    .line 44
    mul-float v0, v0, v1

    .line 45
    .line 46
    div-float/2addr v0, v2

    .line 47
    float-to-int v0, v0

    .line 48
    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 52
    .line 53
    const/16 v1, 0xff

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    sub-float/2addr v0, v2

    .line 60
    const/high16 v2, 0x40a00000    # 5.0f

    .line 61
    .line 62
    div-float/2addr v0, v2

    .line 63
    const/high16 v2, 0x3f800000    # 1.0f

    .line 64
    .line 65
    sub-float/2addr v2, v0

    .line 66
    mul-float v2, v2, v1

    .line 67
    .line 68
    float-to-int v0, v2

    .line 69
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 77
    .line 78
    .line 79
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 86
    .line 87
    const/16 v3, 0x1f

    .line 88
    .line 89
    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    const/4 v2, 0x0

    .line 94
    :try_start_0
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mp:Landroid/graphics/Bitmap;

    .line 95
    .line 96
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mz:Landroid/graphics/RectF;

    .line 97
    .line 98
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MA:Landroid/graphics/Paint;

    .line 99
    .line 100
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    :catchall_0
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 104
    .line 105
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 106
    .line 107
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 112
    .line 113
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    invoke-virtual {p1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 121
    .line 122
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mu:Landroid/graphics/PorterDuffXfermode;

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 125
    .line 126
    .line 127
    iget v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MJ:I

    .line 128
    .line 129
    if-eqz v3, :cond_3

    .line 130
    .line 131
    const/4 v4, 0x1

    .line 132
    if-eq v3, v4, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ml:Landroid/graphics/Bitmap;

    .line 136
    .line 137
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 138
    .line 139
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 140
    .line 141
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mm:Landroid/graphics/Bitmap;

    .line 145
    .line 146
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 147
    .line 148
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 149
    .line 150
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_3
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mn:Landroid/graphics/Bitmap;

    .line 155
    .line 156
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 157
    .line 158
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 159
    .line 160
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 161
    .line 162
    .line 163
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mo:Landroid/graphics/Bitmap;

    .line 164
    .line 165
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 166
    .line 167
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 168
    .line 169
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 170
    .line 171
    .line 172
    :goto_1
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mk:Landroid/graphics/Bitmap;

    .line 173
    .line 174
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 175
    .line 176
    iget-object v5, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Ms:Landroid/graphics/Paint;

    .line 177
    .line 178
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 182
    .line 183
    .line 184
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MI:F

    .line 185
    .line 186
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 187
    .line 188
    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    .line 189
    .line 190
    .line 191
    move-result v3

    .line 192
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    invoke-virtual {p1, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mk:Landroid/graphics/Bitmap;

    .line 202
    .line 203
    iget-object v3, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mr:Landroid/graphics/RectF;

    .line 204
    .line 205
    iget-object v4, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mt:Landroid/graphics/Paint;

    .line 206
    .line 207
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 214
    .line 215
    .line 216
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MD:I

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mw:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mq:I

    .line 7
    .line 8
    add-int/2addr v0, v1

    .line 9
    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->MC:I

    .line 2
    .line 3
    iget v1, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->Mv:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    return v0
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public final isRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/kwad/components/ad/splashscreen/widget/d;->ME:Landroid/animation/ValueAnimator;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
